$NetBSD: patch-mozilla_media_libsydneyaudio_src_sydney__audio__pulseaudio.c,v 1.1 2012/04/28 22:48:06 ryoon Exp $

--- mozilla/media/libsydneyaudio/src/sydney_audio_pulseaudio.c.orig	2012-08-27 04:49:25.000000000 +0000
+++ mozilla/media/libsydneyaudio/src/sydney_audio_pulseaudio.c
@@ -6,7 +6,9 @@
 #include <stdio.h>
 #include <string.h>
 #include <pthread.h>
+_Pragma("GCC visibility push(default)")
 #include <pulse/pulseaudio.h>
+_Pragma("GCC visibility pop")
 #include "sydney_audio.h"
 
 /* Pulseaudio implementation based heavily on sydney_audio_alsa.c */
