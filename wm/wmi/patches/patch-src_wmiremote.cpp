$NetBSD$

--- src/wmiremote.cpp.orig	2011-12-05 20:34:12.000000000 +0000
+++ src/wmiremote.cpp
@@ -12,6 +12,7 @@ extern "C" {
 #include <X11/Xutil.h>
 }
 
+#include <cstdlib>
 #include <iostream>
 #include <string>
 
