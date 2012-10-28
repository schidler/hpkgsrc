$NetBSD$

--- Modules/posixmodule.c.orig	2012-10-27 20:43:23.215482368 +0000
+++ Modules/posixmodule.c
@@ -23,6 +23,11 @@
 
 #endif /* __APPLE__ */
 
+#ifdef __HAIKU__
+#undef HAVE_WAIT3
+#undef HAVE_WAIT4
+#endif
+
 #define PY_SSIZE_T_CLEAN
 
 #include "Python.h"
