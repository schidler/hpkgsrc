$NetBSD$

--- src/gui/styles/styles.pri.orig	2012-09-11 01:36:51.033554432 +0000
+++ src/gui/styles/styles.pri
@@ -184,3 +184,11 @@ contains( styles, s60 ):contains(QT_CONF
     }
     DEFINES += QT_NO_STYLE_S60
 }
+
+haiku {
+    HEADERS += styles/qhaikustyle.h
+    HEADERS += styles/qhaikustyle_p.h
+    SOURCES += styles/qhaikustyle.cpp
+} else {
+	DEFINES += QT_NO_STYLE_HAIKU
+}
