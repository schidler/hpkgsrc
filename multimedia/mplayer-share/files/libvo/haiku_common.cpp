/*
 * Copyright 2011 3dEyes** <3dEyes@gmail.com>
 * All rights reserved. Distributed under the terms of the MIT license.
 */

#include "haiku_common.h"

extern "C" {
#include "config.h"
#include "mp_msg.h"
#include "m_option.h"
#include "mp_fifo.h"
#include "mpbswap.h"
#include "sub.h"
#include "video_out.h"
#include "help_mp.h"
#include "aspect.h"
#include "command.h"
#include "osdep/keycodes.h"
#include "input/input.h"
#include "input/mouse.h"
}


FBView::FBView(BRect rect) : 
	BView(rect, "FBView", B_FOLLOW_ALL, B_WILL_DRAW)
{
	FBView(rect, rect.IntegerWidth(), rect.IntegerHeight());
}

FBView::FBView(BRect rect, int width, int height) : 
	BView(rect, "FBView", B_FOLLOW_ALL, B_WILL_DRAW)
{
	renderRect = Bounds();
	
	buffer_width = width;
	buffer_height = height;
	
	BRect	fbRect = BRect(0,0,buffer_width-1,buffer_height-1);	
	bufferView = new BView(fbRect, "bufferView", B_FOLLOW_ALL_SIDES, 0);
	bufferBitmap = new BBitmap(fbRect, B_RGB32, true);
	bufferBitmap->AddChild(bufferView);		
}

FBView::~FBView()
{
	
}

void
FBView::MouseDown(BPoint point)
{
	uint32 buttons = Window()->CurrentMessage()->FindInt32("buttons");
    int32 clicks = Window()->CurrentMessage()->FindInt32("clicks");
	
	if( buttons & B_PRIMARY_MOUSE_BUTTON ) {
		if(clicks==1)
			mplayer_put_key(MOUSE_BTN0);
		else {
			vo_fs = !vo_fs;
     	 	((MWindow*)Window())->SetFullscreen(vo_fs);	
     	 	mplayer_put_key(MOUSE_BTN0);
		}			
	}
	if( buttons & B_SECONDARY_MOUSE_BUTTON ) {
		mplayer_put_key(clicks==1?MOUSE_BTN2:MOUSE_BTN2_DBL);
	}
	if( buttons &  B_TERTIARY_MOUSE_BUTTON ) {
		mplayer_put_key(clicks==1?MOUSE_BTN1:MOUSE_BTN1_DBL);
	}	
}

void
FBView::MouseWheelChanged(BMessage *msg)
{
	float dy;
	if (msg->FindFloat("be:wheel_delta_y", &dy) == B_OK) {
		if(dy<0)
			mplayer_put_key(MOUSE_BTN3);
        else
            mplayer_put_key(MOUSE_BTN4);
	}
}

void 
FBView::MouseMoved(BPoint point, uint32 transit,const BMessage *message)
{
   switch(transit)
	 {
	 	case B_INSIDE_VIEW:
	 	case B_ENTERED_VIEW:
	 		{
	 			BPoint p = point;
				vo_mouse_movement(p.x, p.y);
	 			break;
	 		}
	 }	
}

void
FBView::MessageReceived(BMessage *pmsg)
{
	switch (pmsg->what) {
		case B_MOUSE_WHEEL_CHANGED:
			MouseWheelChanged(pmsg);
			break;
		default:
			BView::MessageReceived(pmsg);
			break;
	}
}

void 
FBView::Draw(BRect rect)
{
	Paint();
}

void 
FBView::SetRenderRect(BRect rect)
{
	renderRect = rect;
	MoveTo(rect.left, rect.top);
	ResizeTo(rect.Width(),rect.Height());
	Paint();
}

void 
FBView::Paint()
{
  if(LockLooper())	{
 	 bufferView->LockLooper();
 	 SetDrawingMode(B_OP_COPY);
	 DrawBitmap(bufferBitmap,bufferView->Bounds(),Bounds());
	 bufferView->UnlockLooper();
	 UnlockLooper();
	}
}

uint32 *
FBView::GetBuffer()
{
	if(bufferBitmap) {
		return (uint32*)bufferBitmap->Bits();
	}
	return NULL;
}

uint32	
FBView::GetBufferSize()
{
	if(bufferBitmap) {
		return bufferBitmap->BitsLength()/4;
	}
	return 0;
}

int
FBView::Width() 
{
	return buffer_width;
}

int
FBView::Height()
{
	return buffer_height;
}


MWindow::MWindow(int width, int height, const char* title)
	: BWindow(BRect(80,80,80+width,80+height), title, B_TITLED_WINDOW_LOOK,B_NORMAL_WINDOW_FEEL,0)//B_NOT_RESIZABLE|B_NOT_ZOOMABLE)
{	
	BScreen scr;
	image_width = width;
	image_height = height;
	
	float oWidth = ( Frame().left + width )<scr.Frame().Width()?width:(scr.Frame().Width()-Frame().left-20);
	float oHeight = ( Frame().top + height )<scr.Frame().Height()?height:(scr.Frame().Height()-Frame().top-20);
	
	renderRect = Bounds();
	prev_frame = Frame();
	
	BView *view = new BView(Bounds(),"container",B_FOLLOW_ALL, B_WILL_DRAW);
	view->SetViewColor(0,0,0);
	AddChild(view);
	
	fb = new FBView(Bounds(), width, height);
	fb->SetViewColor(B_TRANSPARENT_32_BIT);
	view->AddChild(fb);
	
	ResizeTo(oWidth, oHeight);

	renderRect = Bounds();
	prev_frame = Frame();
	
}


MWindow::~MWindow()
{
	
}

void
MWindow::SetFullscreen(int fs)
{
	if(fs==1) {
		prev_frame = Frame();
		BScreen scr;
		MoveTo(0,0);		
		ResizeTo(scr.Frame().right+1,scr.Frame().bottom+1);
	} else {
		MoveTo(prev_frame.left,prev_frame.top);
		ResizeTo(prev_frame.Width(),prev_frame.Height());				
	}	
}

void
MWindow::FrameResized(float width, float height)
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
MWindow::Zoom(BPoint origin, float width,float height)
{
 	vo_fs = !vo_fs;
 	SetFullscreen(vo_fs);	
}

void 
MWindow::MessageReceived(BMessage *message)
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
	     	 			SetFullscreen(vo_fs);
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
MWindow::QuitRequested()
{
	mplayer_put_key(KEY_CLOSE_WIN);
	return true;
}
