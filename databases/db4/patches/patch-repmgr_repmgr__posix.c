$NetBSD$

--- repmgr/repmgr_posix.c.orig	2010-04-12 20:25:35.006029312 +0000
+++ repmgr/repmgr_posix.c
@@ -7,4 +7,12 @@
  */
 
+#define _SYS_UIO_H
+#include <sys/types.h>
+// redeclare because dumb clash with typedef to iovec in Haiku's uio.h !
+struct iovec
+  {
+    void *iov_base;     /* Pointer to data.  */
+    size_t iov_len;     /* Length of data.  */
+  };
 #include "db_config.h"
 
