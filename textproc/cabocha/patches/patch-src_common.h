$NetBSD$

* require <cstring> for strlen(3).

--- src/common.h.orig	2005-12-24 12:30:35.000000000 +0000
+++ src/common.h
@@ -47,6 +47,7 @@ Copyright (C) 2001-2004 Taku Kudo, All r
 #include <set>
 #include <stdexcept>
 #include <algorithm>
+#include <cstring>
 
 namespace CaboCha
 {
