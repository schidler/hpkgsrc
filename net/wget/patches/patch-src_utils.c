$NetBSD$

--- src/utils.c.orig	2012-11-09 14:30:19.122421248 +0000
+++ src/utils.c
@@ -64,7 +64,9 @@ as that of the covered work.  */
 #include <sys/stat.h>
 
 /* For TIOCGWINSZ and friends: */
+#ifndef __HAIKU__
 #include <sys/ioctl.h>
+#endif
 #ifdef HAVE_TERMIOS_H
 # include <termios.h>
 #endif
