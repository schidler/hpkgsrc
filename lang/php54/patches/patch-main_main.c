$NetBSD: patch-main_main.c,v 1.1 2012/07/25 13:16:02 fhajny Exp $

Fix fd leak on SunOS (https://bugs.php.net/bug.php?id=47675).

--- main/main.c.orig	2012-10-16 10:05:41.034603008 +0000
+++ main/main.c
@@ -2397,7 +2397,7 @@ PHPAPI int php_execute_script(zend_file_
 	zend_file_handle *prepend_file_p, *append_file_p;
 	zend_file_handle prepend_file = {0}, append_file = {0};
 #if HAVE_BROKEN_GETCWD 
-	int old_cwd_fd = -1;
+	volatile int old_cwd_fd = -1;
 #else
 	char *old_cwd;
 	ALLOCA_FLAG(use_heap)
