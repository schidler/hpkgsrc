$NetBSD$

Use portable construct to check file existence.

--- tools/h5import/h5importtestutil.sh.orig	2012-05-09 15:06:14.000000000 +0000
+++ tools/h5import/h5importtestutil.sh
@@ -115,7 +115,7 @@ COPY_TESTFILES_TO_TESTDIR()
         echo $tstfile | tr -d ' ' | grep '^#' > /dev/null
         RET=$?
         if [ $RET -eq 1 ]; then
-            if [ -a $tstfile ]; then
+            if [ -e $tstfile ]; then
                 $CP -f $tstfile $TESTDIR
             else
                 echo "Error: FAILED to copy $tstfile"
