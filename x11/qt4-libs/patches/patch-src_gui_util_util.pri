$NetBSD$

--- src/gui/util/util.pri.orig	2012-09-11 01:36:51.031457280 +0000
+++ src/gui/util/util.pri
@@ -59,3 +59,10 @@ symbian {
 
     LIBS += -ldirectorylocalizer
 }
+
+haiku {
+		HEADERS += \
+				util/qsystemtrayicon_haiku.h
+		SOURCES += \
+				util/qsystemtrayicon_haiku.cpp
+    }
