$NetBSD$

--- libvo/video_out.c.orig	2012-03-31 21:03:45.000000000 +0000
+++ libvo/video_out.c
@@ -136,6 +136,7 @@ extern const vo_functions_t video_out_qu
 extern const vo_functions_t video_out_pnm;
 extern const vo_functions_t video_out_md5sum;
 extern const vo_functions_t video_out_mng;
+extern const vo_functions_t video_out_haiku;
 
 /* The following declarations are _not_ const because functions pointers
  * get overloaded during (re)initialization. */
@@ -204,6 +205,9 @@ const vo_functions_t* const video_out_dr
 #ifdef CONFIG_SDL
         &video_out_sdl,
 #endif
+#ifdef CONFIG_HAIKU
+        &video_out_haiku,
+#endif
 #ifdef CONFIG_GL
         &video_out_gl,
 #endif
