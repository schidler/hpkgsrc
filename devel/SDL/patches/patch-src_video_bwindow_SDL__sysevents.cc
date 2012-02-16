$NetBSD$

--- src/video/bwindow/SDL_sysevents.cc.orig	2009-10-12 23:07:15.000000000 +0000
+++ src/video/bwindow/SDL_sysevents.cc
@@ -36,6 +36,7 @@ extern "C" {
 #include "../../events/SDL_sysevents.h"
 #include "../../events/SDL_events_c.h"
 #include "SDL_sysevents_c.h"
+#include "../SDL_cursor_c.h"
 
 void BE_PumpEvents(_THIS)
 {
@@ -203,11 +204,21 @@ void SDL_BWin::DispatchMessage(BMessage 
 				if (transit == B_EXITED_VIEW) {
 					if ( SDL_GetAppState() & SDL_APPMOUSEFOCUS ) {
 						SDL_PrivateAppActive(0, SDL_APPMOUSEFOCUS);
+#if SDL_VIDEO_OPENGL
+					// for some reason, SDL_EraseCursor fails for OpenGL
+					if (this->the_view != this->SDL_GLView)
+#endif						
+						SDL_EraseCursor(SDL_VideoSurface);
 						be_app->SetCursor(B_HAND_CURSOR);
 					}
 				} else {
 					if ( !(SDL_GetAppState() & SDL_APPMOUSEFOCUS) ) {
 						SDL_PrivateAppActive(1, SDL_APPMOUSEFOCUS);
+#if SDL_VIDEO_OPENGL
+					// for some reason, SDL_EraseCursor fails for OpenGL
+					if (this->the_view != this->SDL_GLView)
+#endif						
+						SDL_EraseCursor(SDL_VideoSurface);
 						SDL_SetCursor(NULL);
 					}
 
@@ -386,13 +397,19 @@ void SDL_BWin::DirectConnected(direct_bu
 		case B_DIRECT_MODIFY:
 			{
 				int32 width = info->window_bounds.right -
-					info->window_bounds.left + 1;
+					info->window_bounds.left;
 				int32 height = info->window_bounds.bottom -
-					info->window_bounds.top + 1;
+					info->window_bounds.top;
 				SDL_PrivateResize(width, height);
 				break;
 			}
 		default:
 			break;
 	}
+#if SDL_VIDEO_OPENGL
+	// If it is a BGLView, it is apparently required to
+	// call DirectConnected() on it as well
+	if (this->the_view == this->SDL_GLView)
+		this->SDL_GLView->DirectConnected(info);
+#endif		
 }
