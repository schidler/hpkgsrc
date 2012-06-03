$NetBSD$

--- tools/designer/src/uitools/uitools.pro.orig	2012-06-03 17:40:28.677380096 +0000
+++ tools/designer/src/uitools/uitools.pro
@@ -1,7 +1,7 @@
 TEMPLATE = lib
 TARGET = QtUiTools
 QT += xml
-CONFIG += qt staticlib
+CONFIG += qt dll
 DESTDIR = ../../../../lib
 DLLDESTDIR = ../../../../bin
 
