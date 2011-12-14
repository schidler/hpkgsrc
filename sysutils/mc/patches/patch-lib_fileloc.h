$NetBSD$

--- lib/fileloc.h.orig	2011-11-22 00:39:11.987496448 +0000
+++ lib/fileloc.h
@@ -15,8 +15,12 @@
 #define MC_FILELOC_H
 
 #ifndef MC_USERCONF_DIR
+#ifdef __HAIKU__
+#define MC_USERCONF_DIR		"config/settings/mc"
+#else
 #define MC_USERCONF_DIR		".mc"
 #endif
+#endif
 
 
 #define TAGS_NAME		"TAGS"
