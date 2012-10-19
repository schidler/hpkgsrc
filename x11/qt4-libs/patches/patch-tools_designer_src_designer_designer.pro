$NetBSD$

--- tools/designer/src/designer/designer.pro.orig	2012-09-11 01:36:54.002621440 +0000
+++ tools/designer/src/designer/designer.pro
@@ -14,7 +14,7 @@ INCLUDEPATH += \
     ../lib/uilib \
     extra
 
-QMAKE_LIBDIR += ../../lib ../../../../lib
+QMAKE_LIBDIR += ../../../../lib
 LIBS += -lQtDesignerComponents -lQtDesigner
 
 RESOURCES += designer.qrc
@@ -87,4 +87,4 @@ INSTALLS += target
 
 include(../sharedcomponents.pri)
 
-unix:!mac:LIBS += -lm
+unix:!mac:!haiku: LIBS += -lm
