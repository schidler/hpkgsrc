$NetBSD$

--- src/gui/util/qsystemtrayicon.cpp.orig	2012-09-11 01:36:51.029884416 +0000
+++ src/gui/util/qsystemtrayicon.cpp
@@ -573,7 +573,19 @@ void QBalloonTip::balloon(const QPoint& 
     }
 
     QPainterPath path;
-#if defined(QT_NO_XSHAPE) && defined(Q_WS_X11)
+#if defined(Q_WS_HAIKU)
+    path.moveTo(0, 0);
+    path.lineTo(sz.width() - 1, 0);
+    path.lineTo(sz.width() - 1, sz.height() - 1);
+    path.lineTo(0, sz.height() - 1);
+    path.lineTo(0, 0);
+    int dx = pos.x(),dy = pos.y();
+    if(pos.x()+sz.width() > scr.right())
+    	dx=pos.x()-sz.width();
+    if(pos.y()+sz.height() > scr.bottom())
+    	dy=pos.y()-sz.height();
+    move(dx,dy);
+#elif defined(QT_NO_XSHAPE) && defined(Q_WS_X11)
     // XShape is required for setting the mask, so we just
     // draw an ugly square when its not available
     path.moveTo(0, 0);
