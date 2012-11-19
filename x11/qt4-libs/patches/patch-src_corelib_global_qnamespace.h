$NetBSD$

--- src/corelib/global/qnamespace.h.orig	2012-09-11 01:36:50.055836672 +0000
+++ src/corelib/global/qnamespace.h
@@ -1677,6 +1677,8 @@ public:
     typedef void * HANDLE;
 #elif defined(Q_OS_SYMBIAN)
     typedef unsigned long int HANDLE; // equivalent to TUint32
+#elif defined(Q_OS_HAIKU)
+    typedef unsigned long HANDLE; // equivalent to TUint32
 #endif
     typedef WindowFlags WFlags;
 
