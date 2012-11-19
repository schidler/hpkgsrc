$NetBSD$

--- src/mkerrcodes2.awk.orig	2012-04-28 09:03:43.000000000 +0000
+++ src/mkerrcodes2.awk
@@ -81,7 +81,7 @@ BEGIN {
 /^#/ { next; }
 
 header {
-  if ($1 ~ /^[0123456789]+$/)
+  if ($1 ~ /^-?[0123456789]+$/) 
     {
       print "static const int err_code_from_index[] = {";
       header = 0;
