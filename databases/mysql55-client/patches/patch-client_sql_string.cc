$NetBSD: patch-client_sql_string.cc,v 1.1.1.1 2011/04/25 21:12:53 adam Exp $

* Portability: include <bstring.h> if exists.

--- client/sql_string.cc.orig	2011-10-12 12:10:25.012582912 +0000
+++ client/sql_string.cc
@@ -29,6 +29,10 @@
 
 #include "sql_string.h"
 
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bzero() */
+#endif
+
 /*****************************************************************************
 ** String functions
 *****************************************************************************/
