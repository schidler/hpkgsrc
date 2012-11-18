$NetBSD$

--- src/common.h.orig	2011-02-11 11:56:13.000000000 +0000
+++ src/common.h
@@ -186,6 +186,8 @@ enum old_files
 };
 GLOBAL enum old_files old_files_option;
 
+GLOBAL bool simulate_hardlinks_option; 
+
 /* Specified file name for incremental list.  */
 GLOBAL const char *listed_incremental_option;
 /* Incremental dump level */
