$NetBSD$

--- src/os/unix/ngx_process.c.orig	2012-10-30 08:21:28.928514048 +0000
+++ src/os/unix/ngx_process.c
@@ -18,6 +18,12 @@ typedef struct {
     void  (*handler)(int signo);
 } ngx_signal_t;
 
+#ifdef __HAIKU__
+#define SIGIO 0
+#define F_SETOWN 6
+#define FIOASYNC 0x5452
+#endif
+
 
 
 static void ngx_execute_proc(ngx_cycle_t *cycle, void *data);
