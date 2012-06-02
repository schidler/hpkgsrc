$NetBSD$

--- tools/designer/src/designer/designer.pro.orig	2012-03-14 14:01:12.027525120 +0000
+++ tools/designer/src/designer/designer.pro
@@ -87,4 +87,4 @@ INSTALLS += target
 
 include(../sharedcomponents.pri)
 
-unix:!mac:LIBS += -lm
+unix:!mac:!haiku:LIBS += -lm
