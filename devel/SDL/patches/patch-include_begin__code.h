$NetBSD$

--- include/begin_code.h.orig	2009-10-12 23:07:19.009175040 +0000
+++ include/begin_code.h
@@ -43,7 +43,7 @@
 #ifndef DECLSPEC
 # if defined(__BEOS__) || defined(__HAIKU__)
 #  if defined(__GNUC__)
-#   define DECLSPEC	__declspec(dllexport)
+#   define DECLSPEC
 #  else
 #   define DECLSPEC	__declspec(export)
 #  endif
