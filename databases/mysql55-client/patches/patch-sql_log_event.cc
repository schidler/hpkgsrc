$NetBSD: patch-sql_log_event.cc,v 1.1.1.1 2011/04/25 21:12:53 adam Exp $

* Portability: include <bstring.h> if exists.

--- sql/log_event.cc.orig	2011-10-12 12:10:24.006553600 +0000
+++ sql/log_event.cc
@@ -45,6 +45,9 @@
 #include "rpl_record.h"
 #include "transaction.h"
 #include <my_dir.h>
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bcmp() */
+#endif
 
 #endif /* MYSQL_CLIENT */
 
