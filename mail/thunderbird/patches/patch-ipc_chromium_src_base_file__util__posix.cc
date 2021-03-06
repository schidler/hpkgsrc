$NetBSD: patch-ipc_chromium_src_base_file__util__posix.cc,v 1.3 2012/04/28 16:56:58 ryoon Exp $

--- mozilla/ipc/chromium/src/base/file_util_posix.cc.orig	2012-08-25 00:31:11.000000000 +0000
+++ mozilla/ipc/chromium/src/base/file_util_posix.cc
@@ -31,7 +31,7 @@
 #include "base/time.h"
 
 // FreeBSD/OpenBSD lacks stat64, but its stat handles files >2GB just fine
-#if defined(OS_FREEBSD) || defined(OS_OPENBSD)
+#ifndef OS_LINUX
 #define stat64 stat
 #endif
 
