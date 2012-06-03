$NetBSD$

--- src/gui/kernel/qwidget.cpp.orig	2012-03-14 14:01:16.028573696 +0000
+++ src/gui/kernel/qwidget.cpp
@@ -1509,6 +1509,20 @@ void QWidget::create(WId window, bool in
     setAttribute(Qt::WA_WState_Created);                        // set created flag
     d->create_sys(window, initializeWindow, destroyOldWindow);
 
+#ifdef Q_WS_HAIKU
+//	qDebug() <<">>>connect signals";
+if (windowType() != Qt::Desktop){ //temporary hack, Desktop don't have native view
+	QObject::connect((const QObject *)d->nativeView, SIGNAL(sendUpdateWidget()),this,SLOT(slot_updateWidget()), Qt::QueuedConnection);
+	QObject::connect((const QObject *)d->nativeView, SIGNAL(sendUpdateWidgetRect(QRect)),this,SLOT(slot_updateWidgetRect(QRect)), Qt::QueuedConnection);
+	QObject::connect((const QObject *)d->nativeView, SIGNAL(sendHaikuEvent(QObject *, QEvent *)),this,SLOT(slot_sendEvent(QObject *, QEvent *)),Qt::QueuedConnection);
+	QObject::connect((const QObject *)d->nativeView, SIGNAL(sendResizeWidget(int, int)),this,SLOT(slot_sendResizeWidget(int, int)), Qt::QueuedConnection);
+	QObject::connect((const QObject *)d->nativeView, SIGNAL(sendMoveWidget(int, int)),this,SLOT(slot_sendMoveWidget(int, int)), Qt::QueuedConnection);
+	QObject::connect((const QObject *)d->nativeView, SIGNAL(sendSetActiveWindow(QWidget *)),this,SLOT(slot_sendSetActiveWindow(QWidget *)), Qt::QueuedConnection);
+	QObject::connect((const QObject *)d->nativeView, SIGNAL(sendCloseWindow(QWidget *)),this,SLOT(slot_sendCloseWindow(QWidget *)), Qt::QueuedConnection);
+}
+//	qDebug() <<"<<<connect signals:done";
+#endif  
+
     // a real toplevel window needs a backing store
     if (isWindow() && windowType() != Qt::Desktop) {
         d->topData()->backingStore.destroy();
@@ -12717,6 +12731,53 @@ void QWidgetPrivate::syncUnifiedMode() {
 
 #endif // QT_MAC_USE_COCOA
 
+/*
+	Trap slot functions for Haiku events
+*/
+void QWidget::slot_updateWidget()
+{
+	update();
+}
+
+void QWidget::slot_updateWidgetRect(QRect r)
+{
+	update(r);
+}
+
+void QWidget::slot_sendEvent(QObject *receiver, QEvent *event)
+{
+	// close all active popup window 
+	if (event->type() == QEvent::MouseButtonPress &&
+		qApp->activePopupWidget() &&
+		qApp->activePopupWidget()->nativeView()->Window() != nativeView()->Window())
+			qApp->activePopupWidget()->close();
+
+	QApplication::sendSpontaneousEvent(receiver, event);
+	delete event;
+}
+
+void QWidget::slot_sendResizeWidget(int width, int height)
+{
+	resize(width, height);
+}
+
+void QWidget::slot_sendMoveWidget(int x, int y)
+{
+	move(x,y);
+}
+
+void QWidget::slot_sendSetActiveWindow(QWidget *widget)
+{
+	if (/*!d->inPopupMode() && */ widget || (!widget && QApplicationPrivate::active_window == this)) 
+		qApp->setActiveWindow(widget);
+}
+
+void QWidget::slot_sendCloseWindow(QWidget *widget)
+{
+    QWidgetPrivate *widget_private = widget->d_func();
+	widget_private->close_helper(QWidgetPrivate::CloseWithSpontaneousEvent);
+}
+
 QT_END_NAMESPACE
 
 #include "moc_qwidget.cpp"
