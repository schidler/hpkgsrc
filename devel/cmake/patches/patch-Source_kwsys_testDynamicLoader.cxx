$NetBSD$

--- Source/kwsys/testDynamicLoader.cxx.orig	2011-10-04 16:09:25.020447232 +0000
+++ Source/kwsys/testDynamicLoader.cxx
@@ -15,7 +15,7 @@
 #include KWSYS_HEADER(ios/iostream)
 #include KWSYS_HEADER(stl/string)
 
-#if defined(__BEOS__) && !defined(__HAIKU__)
+#if defined(__BEOS__)
 #include <be/kernel/OS.h>  /* disable_debugger() API. */
 #endif
 
