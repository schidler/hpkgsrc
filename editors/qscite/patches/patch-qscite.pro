$NetBSD$

--- qscite.pro.orig	2011-03-22 12:20:40.063176704 +0000
+++ qscite.pro
@@ -68,9 +68,10 @@ RESOURCES     = qscite.qrc
 unix {
   HEADERS += qterminal_pty.h
   SOURCES += qterminal_pty.cpp
-  INCLUDEPATH += QScintilla2/Qt4
-  LIBS    += build/libqscintilla2.a
-  !macx {
+  haiku{
+  	LIBS    += -lqscintilla2 -lbsd
+  	}
+  !macx:!haiku {
     LIBS    += -lutil
     DEFINES += QSCITE_MONO_FAMILY='\\"Monospace\\"'
   } else {
