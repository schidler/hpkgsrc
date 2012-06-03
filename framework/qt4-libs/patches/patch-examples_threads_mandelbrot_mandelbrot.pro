$NetBSD$

--- examples/threads/mandelbrot/mandelbrot.pro.orig	2012-03-14 14:01:35.014680064 +0000
+++ examples/threads/mandelbrot/mandelbrot.pro
@@ -4,7 +4,7 @@ SOURCES       = main.cpp \
                 mandelbrotwidget.cpp \
                 renderthread.cpp
 
-unix:!mac:!symbian:!vxworks:!integrity:LIBS += -lm
+unix:!mac:!symbian:!vxworks:!integrity:!haiku:LIBS += -lm
 
 # install
 target.path = $$[QT_INSTALL_EXAMPLES]/threads/mandelbrot
