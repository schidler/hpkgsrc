$NetBSD$

--- sysdep/bsd/sysio.h.orig	2011-09-11 19:44:45.000000000 +0000
+++ sysdep/bsd/sysio.h
@@ -6,6 +6,9 @@
  *	Can be freely distributed and used under the terms of the GNU GPL.
  */
 
+#ifdef __DragonFly__
+#define TCP_MD5SIG	TCP_SIGNATURE_ENABLE
+#endif
 #ifdef IPV6
 
 static inline void
