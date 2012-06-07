$NetBSD$

--- examples/threads/mandelbrot/mandelbrot.pro.orig	2012-04-26 19:45:53.014942208 +0000
+++ examples/threads/mandelbrot/mandelbrot.pro
@@ -4,7 +4,7 @@ SOURCES       = main.cpp \
                 mandelbrotwidget.cpp \
                 renderthread.cpp
 
-unix:!mac:!symbian:!vxworks:!integrity:LIBS += -lm
+unix:!mac:!symbian:!vxworks:!integrity:!haiku:LIBS += -lm
 
 # install
 target.path = $$[QT_INSTALL_EXAMPLES]/threads/mandelbrot
