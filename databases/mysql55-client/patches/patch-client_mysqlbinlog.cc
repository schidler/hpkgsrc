$NetBSD: patch-client_mysqlbinlog.cc,v 1.1.1.1 2011/04/25 21:12:53 adam Exp $

* Portability: include <bstring.h> if exists.

--- client/mysqlbinlog.cc.orig	2011-10-12 12:10:25.031981568 +0000
+++ client/mysqlbinlog.cc
@@ -37,6 +37,9 @@
 #include "log_event.h"
 #include "sql_common.h"
 #include <welcome_copyright_notice.h> // ORACLE_WELCOME_COPYRIGHT_NOTICE
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bzero() */
+#endif
 
 #define BIN_LOG_HEADER_SIZE	4
 #define PROBE_HEADER_LEN	(EVENT_LEN_OFFSET+4)
