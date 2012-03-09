$NetBSD$

--- Source/kwsys/SystemTools.cxx.orig	2011-10-04 16:09:25.019660800 +0000
+++ Source/kwsys/SystemTools.cxx
@@ -151,7 +151,7 @@ public:
 #include <os/storage/Path.h>
 #endif
 
-#if defined(__BEOS__) && !defined(__ZETA__) && !defined(__HAIKU__)
+#if defined(__BEOS__) && !defined(__ZETA__)
 #include <be/kernel/OS.h>
 #include <be/storage/Path.h>
 
