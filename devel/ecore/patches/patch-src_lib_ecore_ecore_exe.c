$NetBSD$

--- src/lib/ecore/ecore_exe.c.orig	2011-10-21 05:37:11.000000000 +0000
+++ src/lib/ecore/ecore_exe.c
@@ -2,7 +2,8 @@
 # include <config.h>
 #endif
 
-#if defined (__FreeBSD__) || defined (__OpenBSD__) || defined (__NetBSD__)
+#if defined (__FreeBSD__) || defined (__OpenBSD__) || defined (__NetBSD__) \
+ || defined (__DragonFly__)
 # include <sys/time.h>
 # include <sys/resource.h>
 #endif
