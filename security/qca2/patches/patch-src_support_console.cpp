$NetBSD$

--- src/support/console.cpp.orig	2010-11-27 21:14:12.000000000 +0000
+++ src/support/console.cpp
@@ -30,7 +30,11 @@
 #ifdef Q_OS_WIN
 # include <windows.h>
 #else
+#ifdef Q_OS_HAIKU
+# include <termios.h>
+#else
 # include <sys/termios.h>
+#endif
 # include <unistd.h>
 # include <fcntl.h>
 #endif
