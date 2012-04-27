$NetBSD$

--- cpus.c.orig	2012-04-27 11:00:40.812122112 +0000
+++ cpus.c
@@ -60,6 +60,10 @@
 #define PR_MCE_KILL_EARLY 1
 #endif
 
+#ifndef __HAIKU__
+#define  SIGIO 0
+#endif
+
 #endif /* CONFIG_LINUX */
 
 static CPUState *next_cpu;
