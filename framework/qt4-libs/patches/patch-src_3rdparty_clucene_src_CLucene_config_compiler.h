$NetBSD$

--- src/3rdparty/clucene/src/CLucene/config/compiler.h.orig	2012-03-14 14:01:29.012320768 +0000
+++ src/3rdparty/clucene/src/CLucene/config/compiler.h
@@ -65,7 +65,7 @@
 ////////////////////////////////////////////////////////////////////
 
 /* Operating system recognition (basic) */
-#if defined (__unix) || defined (__linux__) || defined (__QNX__) || defined (_AIX) || defined (__NetBSD__) || defined (__OpenBSD__) || defined (__Lynx__) || defined(hpux) || defined(__hpux)
+#if defined (__unix) || defined (__linux__) || defined (__QNX__) || defined (_AIX) || defined (__NetBSD__) || defined (__OpenBSD__) || defined (__Lynx__) || defined(hpux) || defined(__hpux) || defined (__HAIKU__)
 #undef  _UNIX
 #define _UNIX 1
 #include "CLucene/config/PlatformUnix.h"
