--- haiku/haikuish.h.orig	2010-12-30 07:07:16.035913728 +0500
+++ haiku/haikuish.h	2011-11-11 15:31:34.025165824 +0600
--- haiku/haikuish.h.orig	2012-02-15 04:44:48.012582912 +0000
+++ haiku/haikuish.h
@@ -6,6 +6,9 @@
 /* We need <sys/wait.h> or else the W* macros aren't defined in perl.h. */
 
 #include <sys/wait.h>
+#include <sys/times.h>
+
+#define LOG_PRIMASK     0x007
 
 #endif
 
