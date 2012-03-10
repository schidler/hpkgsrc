/*
 * Copyright 2011 3dEyes** <3dEyes@gmail.com>
 * All rights reserved. Distributed under the terms of the MIT license.
 */

#ifndef MPLAYER_HAIKU_COMMON_H
#define MPLAYER_HAIKU_COMMON_H

#include <stdio.h>

#include <SupportDefs.h>
#include <Application.h>
#include <Window.h>
#include <View.h>
#include <Bitmap.h>
#include <Rect.h>
#include <OS.h>
#include <Screen.h>


class FBView : public BView 
{
 public:
						FBView(BRect rect);
						FBView(BRect rect, int width, int height);
		virtual			~FBView();
		
		void 			SetRenderRect(BRect r);
		void 			Paint(void);
		uint32			*GetBuffer();
		uint32			GetBufferSize();
		void 			Draw(BRect rect);
		virtual void 	MouseDown(BPoint point);
		virtual void 	MouseMoved(BPoint point, uint32 transit,const BMessage *message);
		void 			MouseWheelChanged(BMessage *msg);
		void 			MessageReceived(BMessage *pmsg);
		
		int				Width();
		int				Height();
 private:
 		int				buffer_width;
 		int				buffer_height;
		BView			*bufferView;
		BBitmap			*bufferBitmap; 		
		BRect			renderRect;
};

class MWindow : public BWindow {
	public:
						MWindow(int w, int h, const char* name);
		virtual			~MWindow();

		virtual void 	MessageReceived(BMessage *message);
		virtual void 	FrameResized(float width, float height);
		virtual void 	Zoom(BPoint origin, float width,float height);
		bool			QuitRequested();
		void			SetFullscreen(int fs);
		
		FBView			*fb;
public:
		BRect			prev_frame;
		BRect			renderRect;
		thread_id 		renderer_thread;	
		float 			image_width, image_height;	
};

#endif //MPLAYER_HAIKU_COMMON_H


