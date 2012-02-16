$NetBSD$

--- src/video/bwindow/SDL_BWin.h.orig	2009-10-12 23:07:15.000000000 +0000
+++ src/video/bwindow/SDL_BWin.h
@@ -30,6 +30,7 @@
 #include <InterfaceKit.h>
 #include <be/game/DirectWindow.h>
 #if SDL_VIDEO_OPENGL
+#include "SDL_opengl.h"
 #include <be/opengl/GLView.h>
 #endif
 #include <support/UTF8.h>
@@ -112,7 +113,7 @@ public:
 			if ( SDL_GLView == NULL ) {
 				SDL_GLView = new BGLView(Bounds(), "SDL GLView",
 					 	B_FOLLOW_ALL_SIDES, (B_WILL_DRAW|B_FRAME_EVENTS),
-					 	gl_flags);
+					 	gl_flags|BGL_DOUBLE);
 				SDL_GLView->EnableDirectMode(true);
 			}
 			if ( the_view != SDL_GLView ) {
@@ -133,17 +134,17 @@ public:
 			}
 			if ( the_view != SDL_View ) {
 				if ( the_view ) {
-#if SDL_VIDEO_OPENGL
-					if ( the_view == SDL_GLView ) {
-						SDL_GLView->UnlockGL();
-					}
-#endif
 					RemoveChild(the_view);
 				}
 				AddChild(SDL_View);
 				the_view = SDL_View;
 			}
 		}
+#if SDL_VIDEO_OPENGL
+		if ( the_view == SDL_GLView ) {
+			SDL_GLView->UnlockGL();
+		}
+#endif		
 		Unlock();
 		return(retval);
 	}
@@ -191,8 +192,8 @@ public:
 #if SDL_VIDEO_OPENGL
 	virtual void SwapBuffers(void) {
 		SDL_GLView->UnlockGL();
-		SDL_GLView->LockGL();
 		SDL_GLView->SwapBuffers();
+		SDL_GLView->LockGL();
 	}
 #endif
 	virtual BView *View(void) {
@@ -215,6 +216,11 @@ public:
 			   the application should respond to the quit request,
 			   or ignore it as desired.
 			 */
+#if SDL_VIDEO_OPENGL
+			if ( SDL_GLView != NULL ) {
+				SDL_GLView->EnableDirectMode(false);
+			}
+#endif			 
 			return(false);
 		}
 		return(true);	/* Close the app window */
