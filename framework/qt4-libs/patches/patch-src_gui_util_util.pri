$NetBSD$

--- src/gui/util/util.pri.orig	2011-12-08 05:06:02.025165824 +0000
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
