$NetBSD: patch-scheduler_dirsvc.c,v 1.1 2011/10/13 13:05:57 hans Exp $

--- scheduler/dirsvc.c.orig	2012-04-25 11:04:41.299892736 +0000
+++ scheduler/dirsvc.c
@@ -97,6 +97,9 @@
 #    endif /* HAVE_SYSTEMCONFIGURATION */
 #  endif /* __APPLE__ */
 #endif /* HAVE_DNSSD */
+#ifdef __HAIKU__
+#define s6_addr32	s6_addr
+#endif
 
 
 /*
