$NetBSD$

--- libltdl/m4/libtool.m4.orig	2012-11-07 20:33:48.639107072 +0000
+++ libltdl/m4/libtool.m4
@@ -3561,9 +3561,12 @@ AC_DEFUN([LT_LIB_M],
 [AC_REQUIRE([AC_CANONICAL_HOST])dnl
 LIBM=
 case $host in
-*-*-beos* | *-*-cegcc* | *-*-cygwin* | *-*-haiku* | *-*-pw32* | *-*-darwin*)
+*-*-beos* | *-*-cegcc* | *-*-cygwin* | *-*-pw32* | *-*-darwin*)
   # These system don't have libm, or don't need it
   ;;
+*-*-haiku*)
+  AC_CHECK_LIB(root, cos, LIBM="$LIBM -lroot")
+  ;;
 *-ncr-sysv4.3*)
   AC_CHECK_LIB(mw, _mwvalidcheckl, LIBM="-lmw")
   AC_CHECK_LIB(m, cos, LIBM="$LIBM -lm")
