$NetBSD$

--- src/gui/kernel/qwidget_p.h.orig	2011-12-08 05:06:02.007077888 +0000
+++ src/gui/kernel/qwidget_p.h
@@ -916,6 +916,9 @@ public:
     void reparentChildren();
     void registerTouchWindow();
     QList<WId> widCleanupList;
+#elif defined(Q_WS_HAIKU) // <--------------------------------------------------------- HAIKU
+	QtHaikuWindow *nativeWindow;
+	QtHaikuView *nativeView;
 #endif
 
 };
