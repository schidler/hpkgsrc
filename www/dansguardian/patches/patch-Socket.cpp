$NetBSD$

--- Socket.cpp.orig	2011-11-25 17:12:45.000000000 +0000
+++ Socket.cpp
@@ -34,6 +34,7 @@
 #include <pwd.h>
 #include <cerrno>
 #include <unistd.h>
+#include <cstring>
 #include <string>
 #include <stdexcept>
 
