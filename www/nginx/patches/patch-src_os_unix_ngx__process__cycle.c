$NetBSD$

--- src/os/unix/ngx_process_cycle.c.orig	2012-10-30 10:05:09.395575296 +0000
+++ src/os/unix/ngx_process_cycle.c
@@ -10,6 +10,10 @@
 #include <ngx_event.h>
 #include <ngx_channel.h>
 
+#ifdef __HAIKU__
+#define SIGIO 0
+#endif
+
 
 static void ngx_start_worker_processes(ngx_cycle_t *cycle, ngx_int_t n,
     ngx_int_t type);
@@ -851,12 +855,14 @@ ngx_worker_process_init(ngx_cycle_t *cyc
 
     ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);
 
+#ifndef __HAIKU__
     if (priority && ccf->priority != 0) {
         if (setpriority(PRIO_PROCESS, 0, ccf->priority) == -1) {
             ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                           "setpriority(%d) failed", ccf->priority);
         }
     }
+#endif   
 
     if (ccf->rlimit_nofile != NGX_CONF_UNSET) {
         rlmt.rlim_cur = (rlim_t) ccf->rlimit_nofile;
