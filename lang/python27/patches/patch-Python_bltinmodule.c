$NetBSD$

--- Python/bltinmodule.c.orig	2012-04-09 23:07:35.059768832 +0000
+++ Python/bltinmodule.c
@@ -19,7 +19,7 @@
 */
 #if defined(MS_WINDOWS) && defined(HAVE_USABLE_WCHAR_T)
 const char *Py_FileSystemDefaultEncoding = "mbcs";
-#elif defined(__APPLE__)
+#elif defined(__APPLE__) || defined(__HAIKU__)
 const char *Py_FileSystemDefaultEncoding = "utf-8";
 #else
 const char *Py_FileSystemDefaultEncoding = NULL; /* use default */
