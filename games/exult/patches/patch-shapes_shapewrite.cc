$NetBSD$

--- shapes/shapewrite.cc.orig	2011-11-25 17:35:49.000000000 +0000
+++ shapes/shapewrite.cc
@@ -24,6 +24,7 @@
 #  include <config.h>
 #endif
 
+#include <cstring>
 #include "shapevga.h"
 #include "shapeinf.h"
 #include "monstinf.h"
