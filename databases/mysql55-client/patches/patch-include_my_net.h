$NetBSD: patch-am,v 1.2 2010/09/21 15:57:30 taca Exp $

* Define SHUT_RDWR for Irix 5.

--- include/my_net.h.orig	2012-08-29 08:50:46.003932160 +0000
+++ include/my_net.h
@@ -64,6 +64,15 @@ C_MODE_START
 
 #endif
 
+#if defined(__sgi) && !defined(SHUT_RDWR)
+
+/*
+  IRIX 5 does not define SHUT_RDWR
+*/
+
+#define SHUT_RDWR 2
+#endif
+
 /*
   On OSes which don't have the in_addr_t, we guess that using uint32 is the best
   possible choice. We guess this from the fact that on HP-UX64bit & FreeBSD64bit
