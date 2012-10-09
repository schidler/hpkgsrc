$NetBSD$

--- snmp++/include/snmp_pp/address.h.orig	2010-10-31 23:34:50.017825792 +0000
+++ snmp++/include/snmp_pp/address.h
@@ -82,7 +82,7 @@
 #include <hostLib.h>
 #endif
 
-#ifdef __unix
+#if defined(__unix ) || defined(__HAIKU__)
 #if !defined(_AIX) && !defined(__QNX_NEUTRINO)
 #include <unistd.h>
 #endif
