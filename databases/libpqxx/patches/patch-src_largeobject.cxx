$NetBSD$

--- src/largeobject.cxx.orig	2011-11-24 00:12:56.000000000 +0000
+++ src/largeobject.cxx
@@ -18,6 +18,7 @@
 #include "pqxx/compiler.h"
 
 #include <cerrno>
+#include <cstring>
 #include <stdexcept>
 
 #include "libpq-fe.h"
