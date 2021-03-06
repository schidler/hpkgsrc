$NetBSD$

--- ext/pdo/config.m4.orig	2012-10-16 10:05:41.011272192 +0000
+++ ext/pdo/config.m4
@@ -37,20 +37,6 @@ if test "$PHP_PDO" != "no"; then
 
   PHP_PDO_PEAR_CHECK
 
-  if test "$ext_shared" = "yes" ; then
-    case $host_alias in
-      *darwin*)
-          AC_MSG_ERROR([
-Due to the way that loadable modules work on OSX/Darwin, you need to
-compile the PDO package statically into the PHP core.
-
-Please follow the instructions at: http://netevil.org/node.php?nid=202
-for more detail on this issue.
-          ])
-        ext_shared=no
-        ;;
-    esac
-  fi
   PHP_NEW_EXTENSION(pdo, pdo.c pdo_dbh.c pdo_stmt.c pdo_sql_parser.c pdo_sqlstate.c, $ext_shared)
   ifdef([PHP_ADD_EXTENSION_DEP],
   [
