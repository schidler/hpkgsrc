$NetBSD$

Add missing header.

--- src/settings.cpp.orig	2005-08-22 05:53:38.000000000 +0000
+++ src/settings.cpp
@@ -11,6 +11,7 @@
 #include "event.h"
 #include "filesystem.h"
 #include "utils.h"
+#include <string.h>
 
 #if defined(_WIN32) || defined(__CYGWIN__)
 #include <windows.h>
