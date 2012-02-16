$NetBSD$

--- Source/kwsys/testProcess.c.orig	2011-10-04 16:09:25.057147392 +0000
+++ Source/kwsys/testProcess.c
@@ -32,7 +32,7 @@
 # pragma warn -8060 /* possibly incorrect assignment */
 #endif
 
-#if defined(__BEOS__) && !defined(__ZETA__) && !defined(__HAIKU__)
+#if defined(__BEOS__) && !defined(__ZETA__)
 /* BeOS 5 doesn't have usleep(), but it has snooze(), which is identical. */
 # include <be/kernel/OS.h>
 static inline void testProcess_usleep(unsigned int msec)
