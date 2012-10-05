$NetBSD$

--- src/main/main.pro.orig	2012-09-16 18:42:07.034865152 +0000
+++ src/main/main.pro
@@ -6,12 +6,13 @@ mac: TARGET = QupZilla
 TEMPLATE = app
 
 !unix|mac: LIBS += -L../../bin -lQupZilla
-!mac:unix: LIBS += ../../bin/libQupZilla.so
+!haiku:!mac:unix: LIBS += ../../bin/libQupZilla.so
+haiku: LIBS += ../../bin/.libs/libQupZilla.so
 
 include(../defines.pri)
 include(../install.pri)
 
-unix:!contains(DEFINES, "DISABLE_DBUS") QT += dbus
+!haiku:unix:!contains(DEFINES, "DISABLE_DBUS") QT += dbus
 
 INCLUDEPATH += ../lib/app\
                ../lib/3rdparty\
