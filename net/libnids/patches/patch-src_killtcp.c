$NetBSD$

--- src/killtcp.c.orig	2011-11-26 02:33:07.000000000 +0000
+++ src/killtcp.c
@@ -118,6 +118,6 @@ void nids_killtcp(struct tcp_stream *a_t
     if (initialized)
 	abort();
 }
-#elif
+#else
 #error Something wrong with LIBNET_VER
 #endif
