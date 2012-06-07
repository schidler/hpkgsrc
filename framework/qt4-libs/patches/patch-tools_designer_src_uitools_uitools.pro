$NetBSD$

--- tools/designer/src/uitools/uitools.pro.orig	2012-04-26 19:45:51.040632320 +0000
+++ tools/designer/src/uitools/uitools.pro
@@ -1,7 +1,7 @@
 TEMPLATE = lib
 TARGET = QtUiTools
 QT += xml
-CONFIG += qt staticlib
+CONFIG += qt dll
 DESTDIR = ../../../../lib
 DLLDESTDIR = ../../../../bin
 
