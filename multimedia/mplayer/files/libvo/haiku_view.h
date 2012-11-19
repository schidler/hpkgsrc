#ifndef _H_FBVIEW_
#define _H_FBVIEW_

#include <SupportDefs.h>
#include <Bitmap.h>
#include <View.h>
#include <Rect.h>

class FBView : public BView 
{
 public:
		FBView(BRect rect);
		FBView(BRect rect, int width, int height);
		~FBView();
		
		void 	SetRenderRect(BRect r);
		void 	Paint(void);
		uint32	*GetBuffer();
		uint32	GetBufferSize();
		void Draw(BRect rect);
		virtual void MouseDown(BPoint point);
		virtual void MouseMoved(BPoint point, uint32 transit,const BMessage *message);
		void MouseWheelChanged(BMessage *msg);
		void MessageReceived(BMessage *pmsg);
		
		int		Width();
		int		Height();
 private:
 		int		buffer_width;
 		int		buffer_height;
		BView	*bufferView;
		BBitmap *bufferBitmap; 		
		BRect	renderRect;
};

#endif
