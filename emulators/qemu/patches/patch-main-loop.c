$NetBSD$

--- main-loop.c.orig	2012-04-29 17:05:13.862978048 +0000
+++ main-loop.c
@@ -145,7 +145,9 @@ static int qemu_signal_init(void)
     pthread_sigmask(SIG_BLOCK, &set, NULL);
 
     sigemptyset(&set);
-    sigaddset(&set, SIGIO);
+#ifdef SIGIO    
+	sigaddset(&set, SIGIO);
+#endif	
     sigaddset(&set, SIGALRM);
     sigaddset(&set, SIGBUS);
     pthread_sigmask(SIG_BLOCK, &set, NULL);
