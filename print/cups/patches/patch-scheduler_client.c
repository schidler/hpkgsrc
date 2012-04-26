$NetBSD$

--- scheduler/client.c.orig	2012-04-25 11:03:34.959971328 +0000
+++ scheduler/client.c
@@ -56,6 +56,9 @@
 #ifdef HAVE_TCPD_H
 #  include <tcpd.h>
 #endif /* HAVE_TCPD_H */
+#ifdef __HAIKU__
+#define s6_addr32	s6_addr
+#endif
 
 
 /*
