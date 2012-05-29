$NetBSD$

--- qscite.pro.orig	2011-03-22 12:20:40.000000000 +0000
+++ qscite.pro
@@ -12,7 +12,7 @@ UI_DIR      = build
     DESTDIR = build
 }
 
-unix {
+unix : !haiku {
   qsci_project.target = QScintilla2/Qt4/qscintilla.pro
   qsci_project.commands = ./get_qsci.sh
 
@@ -69,9 +69,17 @@ unix {
   HEADERS += qterminal_pty.h
   SOURCES += qterminal_pty.cpp
   INCLUDEPATH += QScintilla2/Qt4
-  LIBS    += build/libqscintilla2.a
+  !haiku {
+  		LIBS    += build/libqscintilla2.a
+   } else {
+   	LIBS    += -lqscintilla2
+   }
   !macx {
+    !haiku {
     LIBS    += -lutil
+    } else {
+    LIBS    += -lbsd
+    }
     DEFINES += QSCITE_MONO_FAMILY='\\"Monospace\\"'
   } else {
     TARGET   = QSciTE
