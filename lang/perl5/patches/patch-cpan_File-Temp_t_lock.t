$NetBSD$

--- cpan/File-Temp/t/lock.t.orig	2012-02-15 04:44:40.000000000 +0000
+++ cpan/File-Temp/t/lock.t
@@ -8,7 +8,8 @@ use Fcntl;
 BEGIN {
 # see if we have O_EXLOCK
   eval { &Fcntl::O_EXLOCK; };
-  if ($@) {
+  if ($@  || $^O eq 'haiku') {
+    # haiku doesn't implement O_EXLOCK yet (but it defines the value)
     plan skip_all => 'Do not seem to have O_EXLOCK';
   } else {
     plan tests => 4;
