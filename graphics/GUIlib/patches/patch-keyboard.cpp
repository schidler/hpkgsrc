$NetBSD$

--- keyboard.cpp.orig	2011-08-20 13:29:08.000000000 +0000
+++ keyboard.cpp
@@ -72,7 +72,7 @@ protected:
 	}
 };
 
-main(int argc, char *argv[])
+int main(int argc, char *argv[])
 {
 	SDL_Surface *screen;
 	GUI_TermWin *output;
