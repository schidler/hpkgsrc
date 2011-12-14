$NetBSD$

--- src/video/bwindow/SDL_sysyuv.h.orig	2009-10-12 23:07:15.062390272 +0000
+++ src/video/bwindow/SDL_sysyuv.h
@@ -62,7 +62,7 @@ struct private_yuvhwdata
 };
 
 extern BBitmap * BE_GetOverlayBitmap(BRect bounds, color_space cs);
-SDL_Overlay* BE_CreateYUVOverlay(_THIS, int width, int height, Uint32 format, SDL_Surface* display);
+extern SDL_Overlay* BE_CreateYUVOverlay(_THIS, int width, int height, Uint32 format, SDL_Surface* display);
 extern int BE_LockYUVOverlay(_THIS, SDL_Overlay* overlay);
 extern void BE_UnlockYUVOverlay(_THIS, SDL_Overlay* overlay);
 extern int BE_DisplayYUVOverlay(_THIS, SDL_Overlay* overlay, SDL_Rect* src, SDL_Rect* dst);
