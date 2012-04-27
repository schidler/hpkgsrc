$NetBSD$

--- compatfd.c.orig	2012-04-27 10:41:34.275775488 +0000
+++ compatfd.c
@@ -14,7 +14,9 @@
 #include "qemu-common.h"
 #include "compatfd.h"
 
+#ifndef __HAIKU__
 #include <sys/syscall.h>
+#endif
 #include <pthread.h>
 
 struct sigfd_compat_info
