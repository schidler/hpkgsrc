$NetBSD$

Use portable construct to check file existence.

--- tools/h5diff/testh5diff.sh.orig	2012-05-09 15:06:12.000000000 +0000
+++ tools/h5diff/testh5diff.sh
@@ -313,7 +313,7 @@ COPY_TESTFILES_TO_TESTDIR()
         echo $tstfile | tr -d ' ' | grep '^#' > /dev/null
         RET=$?
         if [ $RET -eq 1 ]; then
-            if [ -a $tstfile ]; then
+            if [ -e $tstfile ]; then
                 $CP -f $tstfile $TESTDIR
             else
                 echo "Error: FAILED to copy $tstfile ."
