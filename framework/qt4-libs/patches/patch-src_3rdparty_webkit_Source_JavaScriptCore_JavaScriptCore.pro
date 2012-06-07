$NetBSD$

--- src/3rdparty/webkit/Source/JavaScriptCore/JavaScriptCore.pro.orig	2012-04-26 19:46:13.039321600 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/JavaScriptCore.pro
@@ -4,7 +4,6 @@ include($$PWD/../WebKit.pri)
 include(JavaScriptCore.pri)
 
 TEMPLATE = lib
-CONFIG += staticlib
 # Don't use JavaScriptCore as the target name. qmake would create a JavaScriptCore.vcproj for msvc
 # which already exists as a directory
 TARGET = $$JAVASCRIPTCORE_TARGET
@@ -19,10 +18,9 @@ contains(QT_CONFIG, embedded):CONFIG += 
 # WebCore adds these config only when in a standalone build.
 # qbase.pri takes care of that when in a QTDIR_build
 # Here we add the config for both cases since we don't include qbase.pri
-contains(QT_CONFIG, reduce_exports):CONFIG += hide_symbols
-unix:contains(QT_CONFIG, reduce_relocations):CONFIG += bsymbolic_functions
 
 CONFIG(QTDIR_build) {
+	include($$QT_SOURCE_TREE/src/qbase.pri)
     # Remove the following 2 lines if you want debug information in JavaScriptCore
     CONFIG -= separate_debug_info
     CONFIG += no_debug_info
