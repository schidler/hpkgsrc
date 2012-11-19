$NetBSD$

--- src/hdaccess.c.orig	2012-11-16 09:30:00.766246912 +0000
+++ src/hdaccess.c
@@ -384,7 +384,7 @@ list_disk_t *hd_parse(list_disk_t *list_
 #elif defined(__HAIKU__)
   {
 #ifdef HAVE_GLOB_H
-    list_disk=hd_glob_parse("/dev/disk/*/*/master/raw", list_disk, verbose, arch, testdisk_mode);
+    list_disk=hd_glob_parse("/dev/disk/*/*/*/*/raw", list_disk, verbose, arch, testdisk_mode);
 #endif
   }
 #else
