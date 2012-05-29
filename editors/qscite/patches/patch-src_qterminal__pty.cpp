$NetBSD$

--- src/qterminal_pty.cpp.orig	2012-05-29 08:59:56.946864128 +0000
+++ src/qterminal_pty.cpp
@@ -1,5 +1,5 @@
 #include <cstdlib>
-#include <sys/errno.h>
+#include <errno.h>
 #include <fcntl.h>
 #include <signal.h>
 #include <sys/select.h>
