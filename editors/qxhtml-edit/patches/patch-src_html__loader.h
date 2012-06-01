$NetBSD$

--- src/html_loader.h.orig	2007-05-23 10:54:56.000000000 +0000
+++ src/html_loader.h
@@ -12,6 +12,9 @@
 #if defined Q_WS_X11
 #define WEBAGENTNAME "Unix QT4 / PPK_W @ciz.ch"
 #endif
+#if defined Q_WS_HAIKU
+#define WEBAGENTNAME "Haiku QT4 / dig"
+#endif
 
 typedef QMap<int, QStringList> Loadurl;
 //
