$NetBSD$

--- src/main/beos/SDL_BeApp.cc.orig	2009-10-12 23:07:13.019398656 +0000
+++ src/main/beos/SDL_BeApp.cc
@@ -39,13 +39,15 @@ static SDL_Thread *SDL_AppThread = NULL;
 
 static int StartBeApp(void *unused)
 {
+  if(!be_app) {
 	BApplication *App;
 
 	App = new BApplication("application/x-SDL-executable");
 
 	App->Run();
 	delete App;
-	return(0);
+  }
+ return(0);
 }
 
 /* Initialize the Be Application, if it's not already started */
@@ -86,7 +88,7 @@ int SDL_InitBeApp(void)
 	++SDL_BeAppActive;
 
 	/* The app is running, and we're ready to go */
-	return(0);
+ return(0);
 }
 
 /* Quit the Be Application, if there's nothing left to do */
