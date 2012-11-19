$NetBSD: patch-stream_dvbin.h,v 1.1 2011/07/09 15:51:52 jmcneill Exp $

Add support for dvb capture on NetBSD.

--- stream/dvbin.h.orig	2010-06-21 14:39:24.030408704 +0000
+++ stream/dvbin.h
@@ -16,9 +16,13 @@
 #define LOF2 (10600*1000UL)
 
 #include <inttypes.h>
+#ifdef __NetBSD__
+#include <dev/dtv/dtvio.h>
+#else
 #include <linux/dvb/dmx.h>
 #include <linux/dvb/frontend.h>
 #include <linux/dvb/version.h>
+#endif
 
 #undef DVB_ATSC
 #if defined(DVB_API_VERSION_MINOR)
