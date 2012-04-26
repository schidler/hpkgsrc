$NetBSD$

--- config-scripts/cups-image.m4.orig	2011-05-06 22:53:53.024641536 +0000
+++ config-scripts/cups-image.m4
@@ -48,7 +48,7 @@ AC_SUBST(LIBTIFF)
 AC_SUBST(LIBZ)
 
 dnl Image libraries use math library functions...
-AC_SEARCH_LIBS(pow, m)
+AC_SEARCH_LIBS(pow, m root)
 
 dnl Save the current libraries since we don't want the image libraries
 dnl included with every program...
