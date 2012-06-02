$NetBSD$

--- src/gui/kernel/qwidget_p.h.orig	2012-03-14 14:01:16.020709376 +0000
+++ src/gui/kernel/qwidget_p.h
@@ -917,6 +917,9 @@ public:
     void registerTouchWindow();
     QList<WId> widCleanupList;
     uint isGLGlobalShareWidget : 1;
+#elif defined(Q_WS_HAIKU) // <--------------------------------------------------------- HAIKU
+	QtHaikuWindow *nativeWindow;
+	QtHaikuView *nativeView;
 #endif
 
 };
