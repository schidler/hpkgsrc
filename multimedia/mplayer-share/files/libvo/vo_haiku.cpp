/*
 * Copyright 2011 3dEyes** <3dEyes@gmail.com>
 * All rights reserved. Distributed under the terms of the MIT license.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#include "haiku_common.h"

extern "C" {
#include "config.h"
#include "mp_msg.h"
#include "aspect.h"
#include "mp_fifo.h"
#include "help_mp.h"
#include "video_out.h"
#include "video_out_internal.h"
#include "sub.h"
#include "libswscale/swscale.h"
#include "libmpcodecs/vf_scale.h"
}

static int cnt = 0;
static MWindow	*haiku_wnd=NULL;

#define BLOCK 16384
static port_id port=B_BAD_VALUE;

static const vo_info_t info =
{
	"Haiku video output",
	"haiku",
	"3dEyes**",
	""
};

extern "C" {
vo_functions_t video_out_haiku =
	{
		&info,
		preinit,
		config,
		control,
		draw_frame,
		draw_slice,
     	draw_osd,
		flip_page,
		check_events,
		uninit
	};

}

static uint32_t image_width, image_height;
static uint32_t image_depth;
static uint32_t image_format;
static uint32_t image_size;
static uint32_t image_buffer_size;
static unsigned char *image_data = NULL;

static int draw_slice(uint8_t *image[], int stride[], int w,int h,int x,int y)
{
	return 0;
}

static void draw_alpha(int x0, int y0, int w, int h, unsigned char *src, unsigned char *srca, int stride)
{
    switch (image_format)
    {
    case IMGFMT_BGR32:
	   	vo_draw_alpha_rgb32(w,h,src,srca,stride, image_data+4*(y0*image_width+x0),4*image_width);
        break;
    }
}

static void draw_osd(void)
{
	if(image_data)
		vo_draw_text(image_width, image_height, draw_alpha);
}

static void
flip_page(void)
{
	if(haiku_wnd) {
		haiku_wnd->fb->Paint();	
	} else {
		int32 msg_code='RGBA';
		int32 w = image_width, h = image_height, cmd = 0;
		int32 sizeBuf = w*h*4;
		unsigned char *pbuffer = (unsigned char *)image_data;
		
		int n = sizeBuf/BLOCK;
		 	int ln = sizeBuf%BLOCK;
		 	unsigned char* ptr=pbuffer;
		
		write_port(port,'BITS',(void*)&cmd, sizeof(int));
		
		write_port(port,msg_code,(void*)&w, sizeof(int));
		write_port(port,msg_code,(void*)&h, sizeof(int));
		
		 	for(int i=0;i<n;i++,ptr+=BLOCK)
		 		write_port(port,msg_code,(void*)ptr, BLOCK);
		 	write_port(port,msg_code,(void*)ptr, ln);	
	}
}

static int
draw_frame(uint8_t *src[])
{	
	memcpy(image_data,src[0],image_size);	
	return 0;
}

static int
query_format(uint32_t format)
{
	image_format = format;
    switch(format){
    case IMGFMT_BGR32:
        return VFCAP_CSP_SUPPORTED|VFCAP_OSD|VFCAP_SWSCALE;
    }
    return 0;
}

static int
config(uint32_t width, uint32_t height, uint32_t d_width, uint32_t d_height, uint32_t flags, char *title, uint32_t format)
{
	image_width = width;
	image_height = height;
	image_depth = 32;
	image_size = (image_width * image_height * image_depth + 7) / 8;
	
	aspect_save_orig(width,height);
    aspect_save_prescale(d_width,d_height);

	//printf("WinID=%d\n",WinID);
	port=find_port("WID:12345");	
	
	if(port==B_NAME_NOT_FOUND || port==B_BAD_VALUE)	{
		haiku_wnd = new MWindow(image_width,image_height, title);
		image_data=(unsigned char *)haiku_wnd->fb->GetBuffer();
		haiku_wnd->Show();
		if(flags&VOFLAG_FULLSCREEN) {    
			vo_fs=1;
	        if(haiku_wnd)
	        	haiku_wnd->SetFullscreen(vo_fs);
		}		
	} else {
		image_data=(unsigned char *)malloc(image_size);
	}
					
	return 0;
}

static void
uninit(void)
{
	if(!haiku_wnd)	
		free(image_data);
}


static void check_events(void)
{
}

static int preinit(const char *arg)
{	
//    if(be_app==NULL)
//    	be_app = new BApplication("application/x-vnd.mplayer");
    if(arg)
    {
	mp_msg(MSGT_VO,MSGL_WARN, MSGTR_LIBVO_NULL_UnknownSubdevice,arg);
	return ENOSYS;
    }
    return 0;
}

static int control(uint32_t request, void *data, ...)
{
  switch (request) {
  	case VOCTRL_QUERY_FORMAT:
  	{
    	return query_format(*((uint32_t*)data));
  	}
    case VOCTRL_FULLSCREEN: 
    {
    	vo_fs = !vo_fs;
      	if(haiku_wnd)
	       	haiku_wnd->SetFullscreen(vo_fs);
      	return VO_TRUE; 
	}
  }
  return VO_NOTIMPL;
}


