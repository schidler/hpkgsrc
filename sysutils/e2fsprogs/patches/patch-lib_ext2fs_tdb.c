$NetBSD$

--- lib/ext2fs/tdb.c.orig	2010-05-18 01:24:54.025427968 +0000
+++ lib/ext2fs/tdb.c
@@ -36,6 +36,7 @@ Last Changed Date: 2007-06-22 13:36:10 -
 #define HAVE_UTIME_H
 #define HAVE_UTIME
 #endif
+#include <sys/types.h>
 #define _XOPEN_SOURCE 600
 
 #include <unistd.h>
@@ -49,7 +50,6 @@ Last Changed Date: 2007-06-22 13:36:10 -
 #include <sys/select.h>
 #endif
 #include <sys/time.h>
-#include <sys/types.h>
 #include <time.h>
 #ifdef HAVE_UTIME_H
 #include <utime.h>
