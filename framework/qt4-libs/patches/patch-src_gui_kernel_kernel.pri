$NetBSD$

--- src/gui/kernel/kernel.pri.orig	2011-12-08 05:06:02.022282240 +0000
+++ src/gui/kernel/kernel.pri
@@ -327,3 +327,18 @@ wince*: {
                 ../corelib/kernel/qfunctions_wince.cpp \
                 kernel/qguifunctions_wince.cpp
 }
+
+haiku {
+	HEADERS += kernel/qwidget_haiku.h
+    
+	SOURCES += \
+		kernel/qapplication_haiku.cpp \
+		kernel/qwidget_haiku.cpp \
+		kernel/qdnd_haiku.cpp \
+		kernel/qdesktopwidget_haiku.cpp \
+		kernel/qclipboard_haiku.cpp \
+		kernel/qcursor_haiku.cpp \
+		kernel/qkeymapper_haiku.cpp \
+		kernel/qsound_haiku.cpp \
+		kernel/qeventdispatcher_haiku.cpp
+}