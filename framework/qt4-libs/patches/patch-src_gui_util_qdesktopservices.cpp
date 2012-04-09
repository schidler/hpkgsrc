$NetBSD$

--- src/gui/util/qdesktopservices.cpp.orig	2011-12-08 05:06:02.026738688 +0000
+++ src/gui/util/qdesktopservices.cpp
@@ -55,6 +55,8 @@
 #include "qdesktopservices_mac.cpp"
 #elif defined(Q_OS_SYMBIAN)
 #include "qdesktopservices_s60.cpp"
+#elif defined(Q_WS_HAIKU)
+#include "qdesktopservices_haiku.cpp"
 #endif
 
 #include <qhash.h>
