$NetBSD$

--- gettext-tools/gnulib-lib/binary-io.h.orig	2011-11-17 04:28:46.414973952 +0000
+++ gettext-tools/gnulib-lib/binary-io.h
@@ -31,7 +31,7 @@
 # define O_BINARY _O_BINARY
 # define O_TEXT _O_TEXT
 #endif
-#if defined __BEOS__ || defined __HAIKU__
+#if defined __BEOS__
   /* BeOS 5 and Haiku have O_BINARY and O_TEXT, but they have no effect.  */
 # undef O_BINARY
 # undef O_TEXT
