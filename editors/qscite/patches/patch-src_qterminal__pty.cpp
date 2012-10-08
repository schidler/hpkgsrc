$NetBSD$

--- src/qterminal_pty.cpp.orig	2011-03-22 12:20:40.062390272 +0000
+++ src/qterminal_pty.cpp
@@ -1,5 +1,5 @@
 #include <cstdlib>
-#include <sys/errno.h>
+#include <errno.h>
 #include <fcntl.h>
 #include <signal.h>
 #include <sys/select.h>
