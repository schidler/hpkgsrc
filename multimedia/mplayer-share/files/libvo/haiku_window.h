#ifndef _TEST_WINDOW_H
#define _TEST_WINDOW_H

#include <Application.h>
#include <Window.h>
#include <View.h>
#include <OS.h>

#include "haiku_window.h"
#include "haiku_view.h"

class TestWindow : public BWindow {
	public:
						TestWindow(int w, int h, const char* name);
		virtual			~TestWindow();

		virtual void 	MessageReceived(BMessage *message);
		virtual void FrameResized(float width, float height);
		virtual void Zoom(BPoint origin, float width,float height);
		bool			QuitRequested();

		FBView			*fb;
public:
		BRect			renderRect;
		thread_id 		renderer_thread;	
		float 			image_width, image_height;	
};

#endif


