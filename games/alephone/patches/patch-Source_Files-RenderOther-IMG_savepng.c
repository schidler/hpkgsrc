$NetBSD: patch-Source_Files-RenderOther-IMG_savepng.c.diff,v 1.1 2011/09/25 19:47:38 joerg Exp $

--- Source_Files/RenderOther/IMG_savepng.c.orig	2011-09-24 21:23:44.000000000 +0000
+++ Source_Files/RenderOther/IMG_savepng.c
@@ -29,6 +29,7 @@
 #include <SDL/SDL.h>
 #include <SDL/SDL_byteorder.h>
 #include <png.h>
+#include <zlib.h>
 #include "IMG_savepng.h"
 
 int IMG_SavePNG(const char *file, SDL_Surface *surf,int compression, struct IMG_PNG_text* text, int num_text){
