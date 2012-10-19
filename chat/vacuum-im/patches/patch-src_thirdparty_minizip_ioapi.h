$NetBSD$

--- src/thirdparty/minizip/ioapi.h.orig	2012-02-15 10:01:26.065798144 +0000
+++ src/thirdparty/minizip/ioapi.h
@@ -49,7 +49,7 @@
 #else
 #  include <thirdparty/zlib/zlib.h>
 #endif
-#if defined(USE_FILE32API)
+#if defined(USE_FILE32API) || defined(__HAIKU__)
 #define fopen64 fopen
 #define ftello64 ftell
 #define fseeko64 fseek
