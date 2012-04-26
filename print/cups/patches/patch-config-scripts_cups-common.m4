$NetBSD$

--- config-scripts/cups-common.m4.orig	2012-02-05 18:56:14.024117248 +0000
+++ config-scripts/cups-common.m4
@@ -141,7 +141,7 @@ dnl Checks for iconv.h and iconv_open
 AC_CHECK_HEADER(iconv.h,
 	SAVELIBS="$LIBS"
 	LIBS=""
-	AC_SEARCH_LIBS(iconv_open,iconv,
+	AC_SEARCH_LIBS(iconv_open,iconv textencoding,
 		AC_DEFINE(HAVE_ICONV_H)
 		SAVELIBS="$SAVELIBS $LIBS")
 	LIBS="$SAVELIBS")
