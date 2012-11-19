$NetBSD$

--- src/gui/kernel/kernel.pri.orig	2012-09-11 01:36:51.014680064 +0000
+++ src/gui/kernel/kernel.pri
@@ -334,3 +334,19 @@ wince*: {
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
+
