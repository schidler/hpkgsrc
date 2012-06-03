$NetBSD$

--- examples/itemviews/chart/chart.pro.orig	2012-03-14 14:01:32.055050240 +0000
+++ examples/itemviews/chart/chart.pro
@@ -4,7 +4,7 @@ RESOURCES   = chart.qrc
 SOURCES     = main.cpp \
               mainwindow.cpp \
               pieview.cpp
-unix:!mac:!symbian:!vxworks:!integrity:LIBS+= -lm
+unix:!mac:!symbian:!vxworks:!integrity:!haiku:LIBS+= -lm
 
 TARGET.EPOCHEAPSIZE = 0x200000 0x800000
 
