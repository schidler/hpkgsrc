$NetBSD$

--- termination.cc.orig	2010-12-03 21:12:46.035127296 +0000
+++ termination.cc
@@ -7,7 +7,7 @@
 #include <cxxabi.h>
 #include <string>
 
-#ifndef __WIN32
+#if !defined(__WIN32) && !defined(__HAIKU__)
 #include <execinfo.h>
 #endif
 
@@ -67,7 +67,7 @@ static void termHandler()
     message += "terminate() called without active exception\n";
   }
 
-#ifndef __WIN32
+#if !defined(__WIN32) && !defined(__HAIKU__)
 
   message += "\nBacktrace:\n";
 
