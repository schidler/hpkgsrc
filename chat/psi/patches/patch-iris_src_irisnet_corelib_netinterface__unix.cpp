$NetBSD$

--- iris/src/irisnet/corelib/netinterface_unix.cpp.orig	2012-10-04 00:53:09.033554432 +0000
+++ iris/src/irisnet/corelib/netinterface_unix.cpp
@@ -40,6 +40,10 @@
 # include<sys/sockio.h>
 #endif
 
+#ifdef Q_OS_HAIKU
+#include <unistd.h>
+#endif
+
 class UnixIface
 {
 public:
