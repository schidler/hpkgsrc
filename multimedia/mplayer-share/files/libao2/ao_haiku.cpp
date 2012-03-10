/*
 * Haiku audio output driver for MPlayer
 * (c) 2011 3dEyes**
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <Application.h>
#include <PushGameSound.h>
#include <SoundPlayer.h>

#include "config.h"

extern "C" {
#include "config.h"
#include "audio_out.h"
#include "audio_out_internal.h"
#include "libaf/af_format.h"
#include "mp_msg.h"
#include "help_mp.h"
#include "osdep/timer.h"
#include "libavutil/fifo.h"
}

static const ao_info_t info =
{
	"Haiku audio output",
	"haiku",
	"3dEyes** (3dEyes@gmail.com)",
	""
};

extern "C" {
ao_functions_t audio_out_haiku =
	{
		&info,
		control,
		init,
	    uninit,
		reset,
		get_space,
		play,
		get_delay,
		audio_pause,
		audio_resume
	};
}



#define SAMPLESIZE 1024
#define CHUNK_SIZE 4096
#define NUM_CHUNKS 10
#define BUFFSIZE (NUM_CHUNKS * CHUNK_SIZE)

static AVFifoBuffer *buffer;

BApplication app("application/x-vnd.mplayer");
static BSoundPlayer *player = NULL;

static int write_buffer(unsigned char* data,int len){
  int free = av_fifo_space(buffer);
  if (len > free) len = free;
  return av_fifo_generic_write(buffer, data, len, NULL);
}


static int read_buffer(unsigned char* data,int len){
  int buffered = av_fifo_size(buffer);
  if (len > buffered) len = buffered;
  av_fifo_generic_read(buffer, data, len, NULL);
  return len;
}

//BSoundPlayer proc func
static void proc(void *cookie, void *buffer, size_t len, const media_raw_audio_format &format)
{
	read_buffer((unsigned char*)buffer, len);
}

// to set/get/query special features/parameters
static int control(int cmd,void *arg){
	return CONTROL_UNKNOWN;
}

// open & setup audio device
// return: 1=success 0=fail
static int init(int rate,int channels,int format,int flags){
	buffer = av_fifo_alloc(BUFFSIZE);

	ao_data.channels = channels;
	ao_data.samplerate = rate;
	ao_data.buffersize = CHUNK_SIZE;
	ao_data.outburst = CHUNK_SIZE;
    ao_data.format = format;

	media_raw_audio_format hspec = {
		rate,
		channels,
		media_raw_audio_format::B_AUDIO_SHORT,
		B_MEDIA_LITTLE_ENDIAN,
		CHUNK_SIZE /  2
	};

	switch(format) {
	    case AF_FORMAT_U8:
			hspec.format = media_raw_audio_format::B_AUDIO_UCHAR;
	    	break;
	    case AF_FORMAT_S8:
			hspec.format = media_raw_audio_format::B_AUDIO_CHAR;;
	    	break;
	    case AF_FORMAT_S16_LE:
			hspec.format = media_raw_audio_format::B_AUDIO_SHORT;
            hspec.byte_order = B_MEDIA_LITTLE_ENDIAN;
	    	break;
	    case AF_FORMAT_S16_BE:
			hspec.format = media_raw_audio_format::B_AUDIO_SHORT;
			hspec.byte_order = B_MEDIA_BIG_ENDIAN;
	    	break;
      	case AF_FORMAT_FLOAT_LE:
			hspec.format = media_raw_audio_format::B_AUDIO_FLOAT;
            hspec.byte_order = B_MEDIA_LITTLE_ENDIAN;	
			break;
      	case AF_FORMAT_FLOAT_BE:
			hspec.format = media_raw_audio_format::B_AUDIO_FLOAT;
			hspec.byte_order = B_MEDIA_BIG_ENDIAN;	
			break;	    	
	    default:
            hspec.format = media_raw_audio_format::B_AUDIO_SHORT;
            hspec.byte_order = B_MEDIA_LITTLE_ENDIAN;
            ao_data.format = AF_FORMAT_S16_LE;
            break;        
	}
	
	hspec.buffer_size = CHUNK_SIZE / (af_fmt2bits(ao_data.format) / 8);
	ao_data.bps = channels * rate * (af_fmt2bits(ao_data.format) / 8);
	
	player = new BSoundPlayer(&hspec, "MPlayer", proc);
	
	if(player->InitCheck() != B_OK) {
		delete player; 
		player = NULL;
		return 0;
	}
	
	player->Start();
	player->SetHasData(true);		

	return 1;
}

// close audio device
static void uninit(int immed){

	if (!immed)
	  usec_sleep(get_delay() * 1000 * 1000);
	
	player->SetHasData(false);
	delete player;

	av_fifo_free(buffer);
}

static void reset(void){

	av_fifo_reset(buffer);
}

static void audio_pause(void)
{
	player->Stop();
}

static void audio_resume(void)
{
	player->Start();
	player->SetHasData(true);	
}

static int get_space(void){
    return av_fifo_space(buffer);
}

static int play(void* data,int len,int flags){
	if (!(flags & AOPLAY_FINAL_CHUNK))
	len = (len/ao_data.outburst)*ao_data.outburst;
	return write_buffer((unsigned char*)data, len);
}

static float get_delay(void){
    int buffered = av_fifo_size(buffer); // could be less
    return (float)(buffered + ao_data.buffersize)/(float)ao_data.bps;
}
