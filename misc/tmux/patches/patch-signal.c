$NetBSD$

--- signal.c.orig	2011-11-26 20:13:10.331874304 +0000
+++ signal.c
@@ -37,7 +37,9 @@ set_signals(void(*handler)(int, short, u
 	memset(&sigact, 0, sizeof sigact);
 	sigemptyset(&sigact.sa_mask);
 	sigact.sa_flags = SA_RESTART;
+	#ifndef __HAIKU__
 	sigact.sa_handler = SIG_IGN;
+	#endif
 	if (sigaction(SIGINT, &sigact, NULL) != 0)
 		fatal("sigaction failed");
 	if (sigaction(SIGPIPE, &sigact, NULL) != 0)
@@ -69,7 +71,9 @@ clear_signals(int after_fork)
 	memset(&sigact, 0, sizeof sigact);
 	sigemptyset(&sigact.sa_mask);
 	sigact.sa_flags = SA_RESTART;
+	#ifndef __HAIKU__
 	sigact.sa_handler = SIG_DFL;
+	#endif
 	if (sigaction(SIGINT, &sigact, NULL) != 0)
 		fatal("sigaction failed");
 	if (sigaction(SIGPIPE, &sigact, NULL) != 0)
