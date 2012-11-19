$NetBSD$

--- utils/net_time.c.orig	2012-06-24 17:21:16.015990784 +0000
+++ utils/net_time.c
@@ -106,6 +106,16 @@ int net_time_usage(struct net_context *c
 }
 
 /* try to set the system clock */
+
+#ifdef __HAIKU__
+int settimeofday(struct timeval *tv, struct timezone *tz)
+{
+set_real_time_clock(tv->tv_sec);
+return(0);
+}
+#endif //__HAIKU__
+
+
 static int net_time_set(struct net_context *c, int argc, const char **argv)
 {
 	struct timeval tv;
