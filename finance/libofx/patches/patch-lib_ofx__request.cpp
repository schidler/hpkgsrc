$NetBSD$

Fix build with gcc-4.5.

--- lib/ofx_request.cpp.orig	2007-10-28 03:01:38.000000000 +0000
+++ lib/ofx_request.cpp
@@ -22,6 +22,7 @@
 #endif
 
 #include <string>
+#include <string.h>
 #include "messages.hh"
 #include "libofx.h"
 #include "ofx_request.hh"
