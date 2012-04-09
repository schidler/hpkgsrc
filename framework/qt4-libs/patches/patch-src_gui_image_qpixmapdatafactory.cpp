$NetBSD$

--- src/gui/image/qpixmapdatafactory.cpp.orig	2011-12-08 05:06:02.038535168 +0000
+++ src/gui/image/qpixmapdatafactory.cpp
@@ -59,6 +59,9 @@
 #ifdef Q_OS_SYMBIAN
 # include <private/qpixmap_raster_symbian_p.h>
 #endif
+#ifdef Q_WS_HAIKU
+# include <private/qpixmap_raster_p.h>
+#endif
 
 #include "private/qapplication_p.h"
 #include "private/qgraphicssystem_p.h"
@@ -88,7 +91,9 @@ QPixmapData* QSimplePixmapDataFactory::c
 #elif defined(Q_WS_QPA)
     return new QRasterPixmapData(type);
 #elif defined(Q_OS_SYMBIAN)
-    return new QSymbianRasterPixmapData(type);    
+    return new QSymbianRasterPixmapData(type);
+#elif defined(Q_WS_HAIKU)
+    return new QRasterPixmapData(type);    
 #else
 #error QSimplePixmapDataFactory::create() not implemented
 #endif
