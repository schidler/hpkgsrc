$NetBSD: patch-scripts_mysqld_safe.sh,v 1.1.1.1 2011/04/25 21:12:53 adam Exp $

--- scripts/mysqld_safe.sh.orig	2011-10-12 12:10:24.019660800 +0000
+++ scripts/mysqld_safe.sh
@@ -564,7 +564,7 @@ then
   # Change the err log to the right user, if it is in use
   if [ $want_syslog -eq 0 ]; then
     touch "$err_log"
-    chown $user "$err_log"
+    true $user "$err_log"
   fi
   if test -n "$open_files"
   then
@@ -583,7 +583,7 @@ mysql_unix_port_dir=`dirname $safe_mysql
 if [ ! -d $mysql_unix_port_dir ]
 then
   mkdir $mysql_unix_port_dir
-  chown $user $mysql_unix_port_dir
+  true $user $mysql_unix_port_dir
   chmod 755 $mysql_unix_port_dir
 fi
 
@@ -715,7 +715,7 @@ fi
 # Alternatively, you can start mysqld with the "myisam-recover" option. See
 # the manual for details.
 #
-# echo "Checking tables in $DATADIR"
+# log_notice "Checking tables in $DATADIR"
 # $MY_BASEDIR_VERSION/bin/myisamchk --silent --force --fast --medium-check $DATADIR/*/*.MYI
 # $MY_BASEDIR_VERSION/bin/isamchk --silent --force $DATADIR/*/*.ISM
 
