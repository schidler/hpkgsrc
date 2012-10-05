$NetBSD$

--- src/lib/lib.pro.orig	2012-09-16 18:42:07.034340864 +0000
+++ src/lib/lib.pro
@@ -9,7 +9,7 @@ include(../defines.pri)
 include(../../translations/translations.pri)
 #include(../../tests/modeltest/modeltest.pri)
 
-unix:!contains(DEFINES, "DISABLE_DBUS") QT += dbus
+!haiku:unix:!contains(DEFINES, "DISABLE_DBUS") QT += dbus
 
 INCLUDEPATH += 3rdparty\
                app\
