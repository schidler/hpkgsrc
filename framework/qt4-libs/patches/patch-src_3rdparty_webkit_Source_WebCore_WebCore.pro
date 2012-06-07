$NetBSD$

--- src/3rdparty/webkit/Source/WebCore/WebCore.pro.orig	2012-04-26 19:46:16.028573696 +0000
+++ src/3rdparty/webkit/Source/WebCore/WebCore.pro
@@ -1,3 +1,4 @@
+
 # WebCore - qmake build info
 CONFIG += building-libs
 CONFIG += depend_includepath
@@ -7,13 +8,10 @@ include($$PWD/../WebKit.pri)
 include($$PWD/WebCore.pri)
 include($$PWD/../JavaScriptCore/JavaScriptCore.pri)
 
-contains(QT_CONFIG, reduce_exports):CONFIG += hide_symbols
 
 TEMPLATE = lib
 TARGET = $$WEBCORE_TARGET
-CONFIG += staticlib
 
-DESTDIR = $$WEBCORE_DESTDIR
 
 DEFINES += BUILDING_WEBKIT
 DEFINES += QT_MAKEDLL
