$NetBSD$

--- imagewin/ibuf8.cc.orig	2011-11-25 17:36:29.000000000 +0000
+++ imagewin/ibuf8.cc
@@ -25,6 +25,8 @@
 
 #include "ibuf8.h"
 #ifndef ALPHA_LINUX_CXX
+#  include <cstring>
+#  include <cstdlib>
 #  include <string>
 #  include <iostream>
 #endif
