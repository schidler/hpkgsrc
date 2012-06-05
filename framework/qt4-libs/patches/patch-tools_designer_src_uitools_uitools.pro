$NetBSD$

--- tools/designer/src/uitools/uitools.pro.orig	2012-03-14 14:01:12.052690944 +0000
+++ tools/designer/src/uitools/uitools.pro
@@ -1,7 +1,7 @@
 TEMPLATE = lib
 TARGET = QtUiTools
 QT += xml
-CONFIG += qt staticlib
+CONFIG += qt dll
 DESTDIR = ../../../../lib
 DLLDESTDIR = ../../../../bin
 
