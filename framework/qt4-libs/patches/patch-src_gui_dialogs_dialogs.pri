$NetBSD$

--- src/gui/dialogs/dialogs.pri.orig	2012-03-14 14:01:15.042467328 +0000
+++ src/gui/dialogs/dialogs.pri
@@ -61,6 +61,11 @@ win32 {
     !win32-borland:!wince*: LIBS += -lshell32 	# the filedialog needs this library
 }
 
+haiku {
+     SOURCES +=         dialogs/qfiledialog_haiku.cpp    
+     LIBS += -ltracker 	# the filedialog needs this library
+}
+
 !mac:!embedded:!symbian:unix|qpa {
         HEADERS += dialogs/qpagesetupdialog_unix_p.h
 	SOURCES += dialogs/qprintdialog_unix.cpp \
