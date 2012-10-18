$NetBSD$

--- src/thirdparty/minizip/ioapi.h.orig	2012-10-18 09:10:34.000000000 +0000
+++ src/thirdparty/minizip/ioapi.h
@@ -54,7 +54,7 @@
 #define ftello64 ftell
 #define fseeko64 fseek
 #else
-#ifdef __FreeBSD__
+#ifdef __FreeBSD__ || defined(__HAIKU__)
 #define fopen64 fopen
 #define ftello64 ftello
 #define fseeko64 fseeko
