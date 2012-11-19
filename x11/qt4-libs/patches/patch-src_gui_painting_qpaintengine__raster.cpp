$NetBSD$

--- src/gui/painting/qpaintengine_raster.cpp.orig	2012-09-11 01:36:51.062128128 +0000
+++ src/gui/painting/qpaintengine_raster.cpp
@@ -99,6 +99,8 @@
 #  include <private/qfontengine_s60_p.h>
 #elif defined(Q_WS_QPA)
 #  include <private/qfontengine_ft_p.h>
+#elif defined(Q_WS_HAIKU)
+#    include <private/qfontengine_ft_p.h>
 #endif
 
 #if defined(Q_WS_WIN64)
@@ -3168,7 +3170,7 @@ void QRasterPaintEngine::drawTextItem(co
     }
 #endif //Q_WS_QPA
 
-#if (defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN)) && !defined(QT_NO_FREETYPE)
+#if (defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)) && !defined(QT_NO_FREETYPE)
 
 #if defined(Q_WS_QWS) && !defined(QT_NO_QWS_QPF2)
     if (fontEngine->type() == QFontEngine::QPF2) {
