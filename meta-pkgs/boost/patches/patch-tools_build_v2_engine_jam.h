$NetBSD$

--- tools/build/v2/engine/jam.h.orig	2012-06-06 04:00:21.060030976 +0000
+++ tools/build/v2/engine/jam.h
@@ -145,6 +145,11 @@
     #define OSMINOR "OS=AMIGA"
     #define OS_AMIGA
 #endif
+#ifdef __HAIKU__
+   #define unix
+   #define OSMINOR "OS=HAIKU"
+   #define OS_HAIKU
+#endif
 #ifdef __BEOS__
     #define unix
     #define OSMINOR "OS=BEOS"
