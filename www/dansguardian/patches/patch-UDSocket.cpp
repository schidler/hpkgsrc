$NetBSD$

--- UDSocket.cpp.orig	2011-11-25 17:13:40.000000000 +0000
+++ UDSocket.cpp
@@ -21,6 +21,7 @@
 #include <syslog.h>
 #include "UDSocket.hpp"
 #include <csignal>
+#include <cstring>
 #ifdef __BSD
 	#include <sys/wait.h>
 #else
