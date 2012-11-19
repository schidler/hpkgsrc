$NetBSD$

--- src/botantools/botan/ml_unix/mlock.cpp.orig	2007-04-19 21:26:13.000000000 +0000
+++ src/botantools/botan/ml_unix/mlock.cpp
@@ -32,6 +32,10 @@ namespace QCA { // WRAPNS_LINE
 
 } // WRAPNS_LINE
 #include <botan/util.h>
+#ifdef Q_OS_HAIKU
+#define mlock(ptr, bytes) (void(0))
+#define munlock(ptr, bytes) (void(0))
+#endif
 namespace QCA { // WRAPNS_LINE
 
 #ifndef _POSIX_C_SOURCE
