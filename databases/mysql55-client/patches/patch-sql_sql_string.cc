$NetBSD: patch-sql_sql_string.cc,v 1.1.1.1 2011/04/25 21:12:53 adam Exp $

* Portability: include <bstring.h> if exists.

--- sql/sql_string.cc.orig	2011-10-12 12:10:24.016252928 +0000
+++ sql/sql_string.cc
@@ -27,6 +27,10 @@
 
 #include "sql_string.h"
 
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bzero() */
+#endif
+
 /*****************************************************************************
 ** String functions
 *****************************************************************************/
