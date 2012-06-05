$NetBSD$

--- src/gui/painting/qwindowsurface_raster.cpp.orig	2012-03-14 14:01:15.002097152 +0000
+++ src/gui/painting/qwindowsurface_raster.cpp
@@ -69,6 +69,10 @@
 #include <QToolBar>
 #endif
 
+#ifdef Q_WS_HAIKU
+#include <Window.h>
+#endif
+
 QT_BEGIN_NAMESPACE
 
 class QRasterWindowSurfacePrivate
@@ -332,6 +336,24 @@ void QRasterWindowSurface::flush(QWidget
 
 #endif // Q_WS_MAC
 
+#ifdef Q_WS_HAIKU
+	// d->image is the image to be painted
+	// widget is the widget to be painted on
+	BView *view = widget->nativeView();
+	BLooper* looper = view->Looper();
+
+	if (looper->IsLocked())
+		return;
+	if(view->LockLooper()) {
+		QRect r = rgn.boundingRect();
+		BRect dst_region = BRect(r.x(), r.y(), r.x()+r.width(), r.y()+r.height());
+		BRect src_region = dst_region;
+		src_region.OffsetBy(offset.x(),offset.y());
+		view->DrawBitmap(d->image->bitmap, src_region, dst_region);
+		view->UnlockLooper();
+	}
+#endif
+
 #ifdef Q_OS_SYMBIAN
     Q_UNUSED(widget);
     Q_UNUSED(rgn);
