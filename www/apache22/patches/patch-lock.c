$NetBSD: patch-lock.c,v 1.1 2011/09/12 17:18:46 sborrill Exp $

Atomically create files when using DAV to stop files being deleted on error

From:
https://issues.apache.org/bugzilla/show_bug.cgi?id=39815

--- modules/dav/fs/lock.c.orig	2007-11-29 20:21:10.009699328 +0000
+++ modules/dav/fs/lock.c
@@ -407,6 +407,7 @@ static apr_datum_t dav_fs_build_key(apr_
                                     const dav_resource *resource)
 {
     const char *file = dav_fs_pathname(resource);
+#if 0
     apr_datum_t key;
     apr_finfo_t finfo;
     apr_status_t rv;
@@ -429,6 +430,7 @@ static apr_datum_t dav_fs_build_key(apr_
 
         return key;
     }
+#endif
 
     return dav_fs_build_fname_key(p, file);
 }
