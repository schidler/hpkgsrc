$NetBSD$

--- src/common/darktable.c.orig	2012-07-21 10:44:08.000000000 +0000
+++ src/common/darktable.c
@@ -54,7 +54,7 @@
 #include <unistd.h>
 #include <locale.h>
 
-#if !defined(__APPLE__) && !defined(__FreeBSD__)
+#if !defined(__APPLE__) && !defined(__FreeBSD__) && !defined(__DragonFly__)
 #include <malloc.h>
 #endif
 #ifdef __APPLE__
