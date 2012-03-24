$NetBSD: patch-strings_decimal.c,v 1.1.1.1 2011/04/25 21:12:53 adam Exp $

* Portability: include <bstring.h> if exists.

--- strings/decimal.c.orig	2011-10-12 12:10:25.059244544 +0000
+++ strings/decimal.c
@@ -103,6 +103,9 @@
 #include <my_sys.h> /* for my_alloca */
 #include <m_string.h>
 #include <decimal.h>
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bzero() */
+#endif
 
 /*
   Internally decimal numbers are stored base 10^9 (see DIG_BASE below)