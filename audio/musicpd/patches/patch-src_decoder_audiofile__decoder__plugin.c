$NetBSD$

Include unistd.h for SEEK_CUR, SEEK_SET.

--- src/decoder/audiofile_decoder_plugin.c.orig	2011-12-01 13:44:01.000000000 +0000
+++ src/decoder/audiofile_decoder_plugin.c
@@ -26,6 +26,7 @@
 #include <assert.h>
 #include <glib.h>
 #include <stdio.h>
+#include <unistd.h>
 
 #undef G_LOG_DOMAIN
 #define G_LOG_DOMAIN "audiofile"
