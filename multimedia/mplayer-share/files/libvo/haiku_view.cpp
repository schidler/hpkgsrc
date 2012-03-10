/*
 * Copyright 2010 Your Name <your@email.address>
 * All rights reserved. Distributed under the terms of the MIT license.
 */
 
#include "haiku_window.h"
#include "haiku_view.h"

#include <stdio.h>

extern "C" {
#include "config.h"
#include "mp_msg.h"
#include "m_option.h"
#include "mp_fifo.h"
#include "mpbswap.h"
#include "sub/sub.h"
#include "video_out.h"

#include "input/input.h"
#include "input/mouse.h"
}

extern void haiku_fullscreen(void);

FBView::FBView(BRect rect) : 
	BView(rect, "FBView", B_FOLLOW_ALL, B_WILL_DRAW) //B_WILL_DRAW|B_PULSE_NEEDED|B_FRAME_EVENTS
{
	FBView(rect, rect.IntegerWidth(), rect.IntegerHeight());
}

FBView::FBView(BRect rect, int width, int height) : 
	BView(rect, "FBView", B_FOLLOW_ALL, B_WILL_DRAW) //B_WILL_DRAW|B_PULSE_NEEDED|B_FRAME_EVENTS
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
     	 	haiku_fullscreen();	
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
		if(dy>0)
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


