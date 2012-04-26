$NetBSD$

--- config-scripts/cups-threads.m4.orig	2011-05-12 05:21:56.026214400 +0000
+++ config-scripts/cups-threads.m4
@@ -23,7 +23,7 @@ if test "x$enable_threads" != xno; then
 
 	if test x$ac_cv_header_pthread_h = xyes; then
 		dnl Check various threading options for the platforms we support
-		for flag in -lpthreads -lpthread -pthread; do
+		for flag in -lpthreads -lpthread -pthread -lroot; do
         		AC_MSG_CHECKING([for pthread_create using $flag])
 			SAVELIBS="$LIBS"
 			LIBS="$flag $LIBS"
