$NetBSD$

--- dxflib/src/dl_writer_ascii.cpp.orig	2005-11-22 11:46:57.000000000 +0000
+++ dxflib/src/dl_writer_ascii.cpp
@@ -30,6 +30,7 @@
 #endif // _MSC_VER > 1000
 
 #include <stdio.h>
+#include <cstring>
 
 #include "dl_writer_ascii.h"
 #include "dl_exception.h"
