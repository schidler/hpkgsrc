$NetBSD$

--- SysV.cpp.orig	2011-11-25 17:13:55.000000000 +0000
+++ SysV.cpp
@@ -20,6 +20,7 @@
 #include <cstdio>
 #include <unistd.h>
 #include <cstdlib>
+#include <cstring>
 #include <fcntl.h>
 #include <csignal>
 #include "SysV.hpp"
