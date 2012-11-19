$NetBSD$

--- libao2/audio_out.c.orig	2012-04-05 22:29:37.000000000 +0000
+++ libao2/audio_out.c
@@ -54,6 +54,7 @@ extern const ao_functions_t audio_out_v4
 extern const ao_functions_t audio_out_mpegpes;
 extern const ao_functions_t audio_out_pcm;
 extern const ao_functions_t audio_out_pss;
+extern const ao_functions_t audio_out_haiku;
 
 const ao_functions_t* const audio_out_drivers[] =
 {
@@ -104,6 +105,9 @@ const ao_functions_t* const audio_out_dr
 #ifdef CONFIG_SDL
         &audio_out_sdl,
 #endif
+#ifdef CONFIG_HAIKU
+        &audio_out_haiku,
+#endif
 #ifdef CONFIG_OPENAL
         &audio_out_openal,
 #endif
