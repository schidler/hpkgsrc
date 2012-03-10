$NetBSD$

--- libao2/audio_out.c.orig	2010-02-20 21:02:49.013893632 +0000
+++ libao2/audio_out.c
@@ -55,6 +55,7 @@ extern const ao_functions_t audio_out_v4
 extern const ao_functions_t audio_out_mpegpes;
 extern const ao_functions_t audio_out_pcm;
 extern const ao_functions_t audio_out_pss;
+extern const ao_functions_t audio_out_haiku;
 
 const ao_functions_t* const audio_out_drivers[] =
 {
@@ -105,9 +106,12 @@ const ao_functions_t* const audio_out_dr
 #ifdef CONFIG_NAS
         &audio_out_nas,
 #endif
-#ifdef CONFIG_SDL
+#if defined(CONFIG_SDL) && !defined(__HAIKU__)
         &audio_out_sdl,
 #endif
+#ifdef __HAIKU__
+        &audio_out_haiku,
+#endif
 #ifdef CONFIG_OPENAL
         &audio_out_openal,
 #endif
