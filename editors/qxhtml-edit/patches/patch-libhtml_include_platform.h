$NetBSD$

--- libhtml/include/platform.h.orig	2007-05-23 10:54:56.000000000 +0000
+++ libhtml/include/platform.h
@@ -282,6 +282,15 @@ extern "C" {
 
 /* Convenience defines for BeOS platforms */
 
+#if defined(__HAIKU__)
+#define HAIKU_OS
+#ifndef PLATFORM_NAME
+#define PLATFORM_NAME "Haiku"
+#endif
+#endif
+
+/* Convenience defines for BeOS platforms */
+
 #if defined(__BEOS__)
 #define BE_OS
 #ifndef PLATFORM_NAME
@@ -410,7 +419,7 @@ extern "C" {
 #if PRESERVE_FILE_TIMES
 
 #ifndef HAS_FUTIME
-#if defined(CYGWIN_OS) || defined(BE_OS) || defined(OS2_OS) || defined(HPUX_OS) || defined(SOLARIS_OS) || defined(LINUX_OS) || defined(BSD_BASED_OS) || defined(MAC_OS) || defined(__MSL__) || defined(IRIX_OS) || defined(AIX_OS) || defined(__BORLANDC__)
+#if defined(CYGWIN_OS) || defined(BE_OS) || defined(HAIKU_OS) || defined(OS2_OS) || defined(HPUX_OS) || defined(SOLARIS_OS) || defined(LINUX_OS) || defined(BSD_BASED_OS) || defined(MAC_OS) || defined(__MSL__) || defined(IRIX_OS) || defined(AIX_OS) || defined(__BORLANDC__)
 #define HAS_FUTIME 0
 #else
 #define HAS_FUTIME 1
