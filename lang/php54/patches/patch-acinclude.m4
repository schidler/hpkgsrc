$NetBSD$

--- acinclude.m4.orig	2012-10-16 10:05:41.060817408 +0000
+++ acinclude.m4
@@ -2352,7 +2352,7 @@ AC_DEFUN([PHP_SETUP_OPENSSL],[
   if test "$found_openssl" = "no"; then
   
     if test "$PHP_OPENSSL_DIR" = "yes"; then
-      PHP_OPENSSL_DIR="/usr/local/ssl /usr/local /usr /usr/local/openssl"
+      PHP_OPENSSL_DIR="/usr/local/ssl /usr/local /usr /usr/local/openssl /"
     fi
 
     for i in $PHP_OPENSSL_DIR; do
