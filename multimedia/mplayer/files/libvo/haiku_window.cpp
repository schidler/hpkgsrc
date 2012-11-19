#include <stdio.h>

extern "C" {
#include "config.h"
#include "command.h"
#include "mp_fifo.h"
#include "aspect.h"
#include "osdep/keycodes.h"
#include "mp_msg.h"
#include "help_mp.h"
#include "sub/sub.h"
#include "video_out.h"
}

extern void haiku_fullscreen(void);
#include "haiku_window.h"


TestWindow::TestWindow(int width, int height, const char* title)
	: BWindow(BRect(100,100,100+width,100+height), title, B_TITLED_WINDOW_LOOK,B_NORMAL_WINDOW_FEEL,0)//B_NOT_RESIZABLE|B_NOT_ZOOMABLE)
{	
	image_width = width;
	image_height = height;
	renderRect = Bounds();
	BView *view = new BView(Bounds(),"back",B_FOLLOW_ALL, B_WILL_DRAW);
	view->SetViewColor(0,0,0);
	AddChild(view);
	
	fb = new FBView(Bounds(), width, height);
	fb->SetViewColor(B_TRANSPARENT_32_BIT);
	view->AddChild(fb);
}


TestWindow::~TestWindow()
{
	
}

void
TestWindow::FrameResized(float width, float height)
{
    int d_width=width;
    int d_height=height;
    
    float winaspect = width/height;
    float videoaspect = image_width/image_height;
               
   	d_width = width;
   	d_height = width/videoaspect;
   	
   	if(d_height>height) {
	   	d_height = height;
   		d_width = height*videoaspect;   		
   	}
    	
	renderRect.left = (width - d_width) / 2;
	renderRect.top = (height - d_height) / 2;
	renderRect.right = renderRect.left + d_width;
	renderRect.bottom = renderRect.top + d_height;
	fb->SetRenderRect(renderRect);
}

void 
TestWindow::Zoom(BPoint origin, float width,float height)
{
 	vo_fs = !vo_fs;
 	haiku_fullscreen();	
}

void 
TestWindow::MessageReceived(BMessage *message)
{
	switch (message->what) {
		case B_KEY_DOWN:
		{
			uint32 code = message->FindInt32("key");
			uint32 raw_char = message->FindInt32("raw_char");
			switch (raw_char) {
				case B_ESCAPE:
					if(vo_fs==1) {
						vo_fs = !vo_fs;
	     	 			haiku_fullscreen();
					} else {
		     	 		mplayer_put_key(KEY_ESC);
					}
					break;
				case B_LEFT_ARROW:
					mplayer_put_key(KEY_LEFT);
					break;
				case B_RIGHT_ARROW:
					mplayer_put_key(KEY_RIGHT);
					break;
				case B_UP_ARROW:
					mplayer_put_key(KEY_UP);
					break;					
				case B_DOWN_ARROW:
					mplayer_put_key(KEY_DOWN);
					break;
				case B_FUNCTION_KEY:
					mplayer_put_key(KEY_F+code-1);
					break;
				case B_ENTER:
					mplayer_put_key(KEY_ENTER);
					break;					
				default:
					mplayer_put_key(raw_char);
					break;
					
			}     	 	
			break;
		}	
		default:
			BWindow::MessageReceived(message);
			break;
	}
}

bool
TestWindow::QuitRequested()
{
	mplayer_put_key(KEY_CLOSE_WIN);
	//be_app->PostMessage(B_QUIT_REQUESTED);
	return true;
}
