$NetBSD$

--- cpan/File-Temp/Temp.pm.orig	2012-02-15 04:44:40.000000000 +0000
+++ cpan/File-Temp/Temp.pm
@@ -1978,7 +1978,8 @@ sub unlink0 {
     #   on Win9x the link count remains 1
     # On NFS the link count may still be 1 but we cant know that
     # we are on NFS
-    return ( $fh[3] == 0 or $^O eq 'cygwin' ? 1 : 0);
+    # On haiku, the link count seems to be always 1 (at least for BFS)
+    return ( $fh[3] == 0 or $^O eq 'cygwin' or $^O eq 'haiku' ? 1 : 0);
 
   } else {
     _deferred_unlink($fh, $path, 0);
