$NetBSD$

--- src/gui/gui.pro.orig	2012-09-11 01:36:51.034078720 +0000
+++ src/gui/gui.pro
@@ -5,7 +5,7 @@ DEFINES   += QT_BUILD_GUI_LIB QT_NO_USIN
 win32-msvc*|win32-icc:QMAKE_LFLAGS += /BASE:0x65000000
 irix-cc*:QMAKE_CXXFLAGS += -no_prelink -ptused
 
-!win32:!embedded:!qpa:!mac:!symbian:CONFIG      += x11
+!win32:!embedded:!qpa:!mac:!symbian:!haiku:CONFIG      += x11
 
 unix|win32-g++*:QMAKE_PKGCONFIG_REQUIRES = QtCore
 
@@ -22,6 +22,7 @@ symbian {
     include(kernel/symbian.pri)
     include(s60framework/s60framework.pri)
 }
+haiku:include(kernel/haiku.pri)
 
 #modules
 include(animation/animation.pri)
 