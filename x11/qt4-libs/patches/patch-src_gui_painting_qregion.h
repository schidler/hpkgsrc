$NetBSD$

--- src/gui/painting/qregion.h.orig	2012-09-11 01:36:51.043778048 +0000
+++ src/gui/painting/qregion.h
@@ -59,7 +59,7 @@ QT_MODULE(Gui)
 template <class T> class QVector;
 class QVariant;
 
-#if defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_WS_X11) || defined(Q_WS_MAC) || defined(Q_WS_WIN) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_WS_X11) || defined(Q_WS_MAC) || defined(Q_WS_WIN) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
 struct QRegionPrivate;
 #endif
 
@@ -207,7 +207,7 @@ private:
 #elif defined(Q_WS_MAC) && !defined(QT_MAC_USE_COCOA)
         mutable RgnHandle unused; // Here for binary compatibility reasons. ### Qt 5 remove.
 #endif
-#if defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_WS_X11) || defined(Q_WS_MAC) || defined(Q_WS_WIN) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_WS_X11) || defined(Q_WS_MAC) || defined(Q_WS_WIN) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
         QRegionPrivate *qt_rgn;
 #endif
     };
