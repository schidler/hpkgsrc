$NetBSD$

--- src/zmm/object.h.orig	2010-03-25 14:58:08.028835840 +0000
+++ src/zmm/object.h
@@ -32,7 +32,7 @@
 #ifndef __ZMM_OBJECT_H__
 #define __ZMM_OBJECT_H__
 
-#include <new> // for size_t
+#include <cstddef> // for size_t
 #include "atomic.h"
 
 namespace zmm
