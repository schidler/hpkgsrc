$NetBSD$

Add missing include.

--- src/cmd_manager.h.orig	2005-08-25 21:57:43.000000000 +0000
+++ src/cmd_manager.h
@@ -5,6 +5,7 @@
 #include "gpsim_interface.h"
 #include <vector>
 #include <string>
+#include <string.h>
 #include <functional>
 using namespace std;
 
