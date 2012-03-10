$NetBSD$

--- libvo/video_out.c.orig	2010-06-13 12:04:13.039845888 +0000
+++ libvo/video_out.c
@@ -142,6 +142,7 @@ extern const vo_functions_t video_out_co
 extern const vo_functions_t video_out_quartz;
 extern const vo_functions_t video_out_pnm;
 extern const vo_functions_t video_out_md5sum;
+extern const vo_functions_t video_out_haiku;
 
 const vo_functions_t* const video_out_drivers[] =
 {
@@ -197,9 +198,12 @@ const vo_functions_t* const video_out_dr
         &video_out_x11,
         &video_out_xover,
 #endif
-#ifdef CONFIG_SDL
+#if defined(CONFIG_SDL)
         &video_out_sdl,
 #endif
+#ifdef __HAIKU__
+        &video_out_haiku,
+#endif
 #ifdef CONFIG_GL
         &video_out_gl,
         &video_out_gl2,
