$NetBSD$

--- conf/Configuration.cc.orig	2011-11-25 17:32:44.000000000 +0000
+++ conf/Configuration.cc
@@ -28,6 +28,7 @@
 #ifndef ALPHA_LINUX_CXX
 #  include <cassert>
 #  include <cstdio>
+#  include <cstdlib>
 #endif
 #include <stdio.h>
 #include <iostream>
