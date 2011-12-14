$NetBSD$

--- src/remap.c.orig	2011-11-25 03:20:27.000000000 +0000
+++ src/remap.c
@@ -28,7 +28,11 @@
 
 #ifndef _MSC_VER
 #include <sys/param.h>
+#ifdef __HAIKU__
+#include <fcntl.h>
+#else
 #include <sys/fcntl.h>
+#endif
 #else
 #ifndef MAXPATHLEN
 #define MAXPATHLEN 255
