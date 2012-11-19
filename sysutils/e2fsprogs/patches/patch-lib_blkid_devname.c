$NetBSD$

--- lib/blkid/devname.c.orig	2012-11-16 18:15:33.047185920 +0000
+++ lib/blkid/devname.c
@@ -37,6 +37,10 @@
 #endif
 #include <time.h>
 
+#ifdef __HAIKU__
+#define makedev(maj,min) (((maj) << 8) | (min))
+#endif
+
 #include "blkidP.h"
 
 /*
