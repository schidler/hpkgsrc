$NetBSD: patch-src_connectiontcpserver.cpp,v 1.1 2011/11/23 19:37:56 marino Exp $

--- src/connectiontcpserver.cpp.orig	2009-10-12 16:40:41.000000000 +0000
+++ src/connectiontcpserver.cpp
@@ -23,6 +23,8 @@
 #include "mutexguard.h"
 #include "util.h"
 
+#include <string.h>
+
 #ifdef __MINGW32__
 # include <winsock.h>
 #endif
