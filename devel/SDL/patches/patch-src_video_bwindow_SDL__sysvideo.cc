$NetBSD$

--- src/video/bwindow/SDL_sysvideo.cc.orig	2009-10-12 23:07:15.066846720 +0000
+++ src/video/bwindow/SDL_sysvideo.cc
@@ -57,7 +57,6 @@ static void BE_UnlockHWSurface(_THIS, SD
 static void BE_FreeHWSurface(_THIS, SDL_Surface *surface);
 
 static int BE_ToggleFullScreen(_THIS, int fullscreen);
-static SDL_Overlay *BE_CreateYUVOverlay(_THIS, int width, int height, Uint32 format, SDL_Surface *display);
 
 /* OpenGL functions */
 #if SDL_VIDEO_OPENGL
