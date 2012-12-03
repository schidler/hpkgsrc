$NetBSD$

--- pcap-int.h.orig	2010-03-12 01:56:54.001310720 +0000
+++ pcap-int.h
@@ -60,6 +60,10 @@ extern CRITICAL_SECTION g_PcapCompileCri
 #include <snf.h>
 #endif
 
+#ifdef __HAIKU__
+#include <stdint.h>
+#endif
+
 #if (defined(_MSC_VER) && (_MSC_VER <= 1200)) /* we are compiling with Visual Studio 6, that doesn't support the LL suffix*/
 
 /*
