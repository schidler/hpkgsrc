$NetBSD$

--- src/binarystring.cxx.orig	2011-11-24 00:12:09.000000000 +0000
+++ src/binarystring.cxx
@@ -18,6 +18,7 @@
 
 #include <new>
 #include <stdexcept>
+#include <cstring>
 
 #include "libpq-fe.h"
 
