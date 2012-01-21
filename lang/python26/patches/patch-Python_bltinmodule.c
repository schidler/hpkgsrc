$NetBSD$

--- Python/bltinmodule.c.orig	2010-05-09 15:15:40.055312384 +0000
+++ Python/bltinmodule.c
@@ -18,7 +18,7 @@
 */
 #if defined(MS_WINDOWS) && defined(HAVE_USABLE_WCHAR_T)
 const char *Py_FileSystemDefaultEncoding = "mbcs";
-#elif defined(__APPLE__)
+#elif defined(__APPLE__) || defined(__HAIKU__)
 const char *Py_FileSystemDefaultEncoding = "utf-8";
 #else
 const char *Py_FileSystemDefaultEncoding = NULL; /* use default */
