$NetBSD$

Fix build with gcc-4.5.

--- lib/ofx_utilities.cpp.orig	2007-10-27 12:15:58.000000000 +0000
+++ lib/ofx_utilities.cpp
@@ -21,7 +21,8 @@
 
 #include "ParserEventGeneratorKit.h"
 #include "SGMLApplication.h"
-#include <time.h>
+#include <cstdlib>
+#include <ctime>
 #include <string>
 #include <locale.h>
 #include "messages.hh"
