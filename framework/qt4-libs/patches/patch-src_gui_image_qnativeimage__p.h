$NetBSD$

--- src/gui/image/qnativeimage_p.h.orig	2011-12-08 05:06:02.039845888 +0000
+++ src/gui/image/qnativeimage_p.h
@@ -64,6 +64,9 @@
 #elif defined(Q_WS_MAC)
 #include <private/qt_mac_p.h>
 
+#elif defined(Q_WS_HAIKU)
+#include <Bitmap.h>
+
 #endif
 
 QT_BEGIN_NAMESPACE
@@ -95,6 +98,9 @@ public:
 
 #elif defined(Q_WS_MAC)
     CGContextRef cg;
+
+#elif defined(Q_WS_HAIKU)
+	BBitmap* bitmap;
 #endif
 
 private:
