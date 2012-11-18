$NetBSD: patch-aw,v 1.2 2010/09/21 15:57:30 taca Exp $

* Portability: include <bstring.h> if exists.

--- sql/sql_string.cc.orig	2012-08-29 08:50:46.023068672 +0000
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
