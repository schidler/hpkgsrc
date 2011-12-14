$NetBSD$

--- client.c.orig	2011-11-26 20:13:52.363593728 +0000
+++ client.c
@@ -313,7 +313,9 @@ client_signal(int sig, unused short even
 			memset(&sigact, 0, sizeof sigact);
 			sigemptyset(&sigact.sa_mask);
 			sigact.sa_flags = SA_RESTART;
+			#ifndef __HAIKU__
 			sigact.sa_handler = SIG_IGN;
+			#endif
 			if (sigaction(SIGTSTP, &sigact, NULL) != 0)
 				fatal("sigaction failed");
 			client_write_server(MSG_WAKEUP, NULL, 0);
@@ -485,7 +487,9 @@ client_dispatch_attached(void)
 			memset(&sigact, 0, sizeof sigact);
 			sigemptyset(&sigact.sa_mask);
 			sigact.sa_flags = SA_RESTART;
+			#ifndef __HAIKU__
 			sigact.sa_handler = SIG_DFL;
+			#endif
 			if (sigaction(SIGTSTP, &sigact, NULL) != 0)
 				fatal("sigaction failed");
 			kill(getpid(), SIGTSTP);
