$NetBSD$

--- src/extract.c.orig	2010-11-27 10:33:22.000000000 +0000
+++ src/extract.c
@@ -31,6 +31,8 @@ static bool we_are_root;	/* true if our 
 static mode_t newdir_umask;	/* umask when creating new directories */
 static mode_t current_umask;	/* current umask (which is set to 0 if -p) */
 
+static int extract_symlink (char *, int);
+
 #define ALL_MODE_BITS ((mode_t) ~ (mode_t) 0)
 
 #if ! HAVE_FCHMOD && ! defined fchmod
@@ -1113,6 +1115,33 @@ extract_link (char *file_name, int typef
   char const *link_name;
   int rc;
 
+  if (simulate_hardlinks_option)
+ {
+       /* symlinks have to be normalized */
+       const char* f = file_name;
+       const char* l = current_stat_info.link_name;
+       int sep_pos = 0;
+       int p_count = 0;
+       char *link_name = (char*) xmalloc(strlen(current_stat_info.link_name) * 2);
+  for (; *f && *l; f++, l++)
+       {
+         if (*f != *l)
+                 break;
+         if (*f == DIRECTORY_SEPARATOR)
+                 sep_pos = f - file_name;
+       }
+       for (p_count = 0; *f; f++)
+         if (*f == DIRECTORY_SEPARATOR)
+           p_count++;
+       link_name[0] = '\0';
+       while (p_count--)
+         strcat(link_name, "../");
+       strcat(link_name, &current_stat_info.link_name[sep_pos + 1]);
+       free(current_stat_info.link_name);
+       current_stat_info.link_name = link_name;
+       return extract_symlink(file_name, typeflag);
+ }
+  
   link_name = current_stat_info.link_name;
 
   if (! absolute_names_option && contains_dot_dot (link_name))
