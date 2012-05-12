$NetBSD$

--- src/toast.c.orig	2012-05-12 05:53:11.000000000 +0000
+++ src/toast.c
@@ -8,2 +8,5 @@
 
+#ifdef __HAIKU__
+#include	<sys/time.h>
+#endif
 #include	"toast.h"
