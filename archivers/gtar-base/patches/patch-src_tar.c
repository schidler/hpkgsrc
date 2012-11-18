$NetBSD$

--- src/tar.c.orig	2010-10-24 18:07:55.000000000 +0000
+++ src/tar.c
@@ -466,6 +466,8 @@ static struct argp_option options[] = {
   {"overwrite-dir", OVERWRITE_DIR_OPTION, 0, 0,
    N_("overwrite metadata of existing directories when extracting (default)"),
    GRID+1 },
+  {"replace-hardlinks", 'Q', 0, 0,
+   N_("replace hardlinks with corresponding symlink when extracting"), GRID+1 },
 #undef GRID
 
 #define GRID 40
@@ -1815,6 +1817,10 @@ parse_opt (int key, char *arg, struct ar
       set_archive_format (arg);
       break;
 
+    case 'Q':
+      simulate_hardlinks_option = true;
+      break;
+    
     case INDEX_FILE_OPTION:
       index_file_name = arg;
       break;
@@ -2240,6 +2246,7 @@ decode_options (int argc, char **argv)
   unquote_option = true;
   tar_sparse_major = 1;
   tar_sparse_minor = 0;
+  simulate_hardlinks_option = false;
 
   owner_option = -1;
   group_option = -1;
