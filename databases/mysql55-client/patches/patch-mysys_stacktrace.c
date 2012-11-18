$NetBSD: patch-mysys_stacktrace.c,v 1.1.1.1 2011/04/25 21:12:53 adam Exp $

--- mysys/stacktrace.c.orig	2012-08-29 08:50:46.021757952 +0000
+++ mysys/stacktrace.c
@@ -431,7 +431,7 @@ void my_write_core(int sig)
   __gcov_flush();
 #endif
   pthread_kill(pthread_self(), sig);
-#if defined(P_MYID) && !defined(SCO)
+#if HAVE_SIGSEND && defined(P_MYID) && !defined(SCO)
   /* On Solaris, the above kill is not enough */
   sigsend(P_PID,P_MYID,sig);
 #endif
