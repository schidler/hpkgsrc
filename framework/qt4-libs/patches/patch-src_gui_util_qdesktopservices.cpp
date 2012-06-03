$NetBSD$

--- src/gui/util/qdesktopservices.cpp.orig	2012-03-14 14:01:15.006029312 +0000
+++ src/gui/util/qdesktopservices.cpp
@@ -55,6 +55,8 @@
 #include "qdesktopservices_mac.cpp"
 #elif defined(Q_OS_SYMBIAN)
 #include "qdesktopservices_s60.cpp"
+#elif defined(Q_WS_HAIKU)
+#include "qdesktopservices_haiku.cpp"
 #endif
 
 #include <qhash.h>
