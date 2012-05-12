$NetBSD$

--- cherokee/main_admin.c.orig	2011-10-12 18:07:44.004456448 +0000
+++ cherokee/main_admin.c
@@ -561,8 +561,11 @@ check_for_python (void)
 		return ret_error;
 
 	} else if (pid == 0) {
-		execv ("/usr/bin/env", (char * const *) args);
-
+		#ifdef __HAIKU__
+            execv ("/bin/env", (char * const *) args);
+        #else
+            execv ("/usr/bin/env", (char * const *) args);
+        #endif
 	} else {
 		do {
 			re = waitpid (pid, &exitcode, 0);
