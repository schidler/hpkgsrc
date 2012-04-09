$NetBSD$

--- src/gui/painting/qgraphicssystem.cpp.orig	2011-12-08 05:06:02.052953088 +0000
+++ src/gui/painting/qgraphicssystem.cpp
@@ -44,7 +44,7 @@
 #ifdef Q_WS_X11
 # include <private/qpixmap_x11_p.h>
 #endif
-#if defined(Q_WS_WIN)
+#if defined(Q_WS_WIN) || defined(Q_WS_HAIKU)
 # include <private/qpixmap_raster_p.h>
 #endif
 #ifdef Q_WS_MAC
@@ -81,6 +81,8 @@ QPixmapData *QGraphicsSystem::createDefa
     return QApplicationPrivate::platformIntegration()->createPixmapData(type);
 #elif defined(Q_OS_SYMBIAN)
     return new QSymbianRasterPixmapData(type);    
+#elif defined(Q_WS_HAIKU)
+    return new QRasterPixmapData(type);
 #elif !defined(Q_WS_QWS)
 #error QGraphicsSystem::createDefaultPixmapData() not implemented
 #endif
