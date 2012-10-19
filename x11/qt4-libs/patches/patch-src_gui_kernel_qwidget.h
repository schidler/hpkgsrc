$NetBSD$

--- src/gui/kernel/qwidget.h.orig	2012-09-11 01:36:51.016777216 +0000
+++ src/gui/kernel/qwidget.h
@@ -107,6 +107,9 @@ class QUnifiedToolbarSurface;
 #if defined(Q_WS_X11)
 class QX11Info;
 #endif
+#if defined(Q_WS_HAIKU) && !defined(BUILDING_WEBKIT)
+#include "qwidget_haiku.h"
+#endif
 
 class QWidgetData
 {
@@ -261,6 +264,16 @@ public Q_SLOTS:
     void setEnabled(bool);
     void setDisabled(bool);
     void setWindowModified(bool);
+//#ifdef Q_WS_HAIKU // Its all for moc, but moc does not support #ifdef
+// Remove! break cross-platform! 
+	void slot_updateWidget();
+	void slot_updateWidgetRect(QRect r);
+	void slot_sendEvent(QObject *receiver, QEvent *event);
+	void slot_sendResizeWidget(int width, int height);
+	void slot_sendMoveWidget(int x, int y);
+	void slot_sendSetActiveWindow(QWidget *widget);
+	void slot_sendCloseWindow(QWidget *widget);
+//#endif
 
     // Widget coordinates
 
@@ -611,6 +624,10 @@ public:
     Qt::HANDLE handle() const;
 #endif
 
+#if defined(Q_WS_HAIKU)
+	BView* nativeView() const;
+#endif
+
     void setAttribute(Qt::WidgetAttribute, bool on = true);
     inline bool testAttribute(Qt::WidgetAttribute) const;
 
