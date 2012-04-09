$NetBSD$

--- src/gui/text/text.pri.orig	2011-12-08 05:06:02.056885248 +0000
+++ src/gui/text/text.pri
@@ -248,5 +248,15 @@ contains(QT_CONFIG, fontconfig) {
 }
 }#!qpa
 
+haiku*: {
+	HEADERS += \
+		text/qfontengine_ft_p.h \
+		text/qfontengine_haiku_p.h		
+	SOURCES += \
+		text/qfont_haiku.cpp \
+		text/qfontengine_ft.cpp \
+		text/qfontengine_haiku.cpp
+}
+
 DEFINES += QT_NO_OPENTYPE
 INCLUDEPATH += ../3rdparty/harfbuzz/src
