$NetBSD$

--- examples/painting/painterpaths/painterpaths.pro.orig	2012-03-14 14:01:35.065011712 +0000
+++ examples/painting/painterpaths/painterpaths.pro
@@ -3,7 +3,7 @@ HEADERS       = renderarea.h \
 SOURCES       = main.cpp \
                 renderarea.cpp \
                 window.cpp
-unix:!mac:!symbian:!vxworks:!integrity:LIBS += -lm
+unix:!mac:!symbian:!vxworks:!integrity:!haiku:LIBS += -lm
 
 # install
 target.path = $$[QT_INSTALL_EXAMPLES]/painting/painterpaths
