$NetBSD$

Fix buils with gcc4.3

--- source/Compiler.cpp.orig	2011-02-04 04:15:39.108292974 +0000
+++ source/Compiler.cpp
@@ -33,6 +33,7 @@ Description:
 #include <iomanip>
 #include <algorithm>
 #include <cstring>
+#include <cstdio>
 
 #include "zlib.h"
 
