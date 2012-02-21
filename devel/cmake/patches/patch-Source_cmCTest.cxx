$NetBSD$

--- Source/cmCTest.cxx.orig	2011-10-04 16:09:24.015990784 +0000
+++ Source/cmCTest.cxx
@@ -53,7 +53,7 @@
 #include <cm_zlib.h>
 #include <cmsys/Base64.h>
 
-#if defined(__BEOS__) && !defined(__HAIKU__)
+#if defined(__BEOS__)
 #include <be/kernel/OS.h>   /* disable_debugger() API. */
 #endif
 
