$NetBSD$

--- src.pro.orig	2012-05-30 09:49:31.000000000 +0000
+++ src.pro
@@ -100,7 +100,7 @@ greaterThan(QT_MAJOR_VERSION, 4) {
 #QT += blah blah blah
    }
 
-TARGET = bin/tea
+TARGET = tea
 #target.path = /usr/local/bin
 
 isEmpty( PREFIX ) {
@@ -198,7 +198,7 @@ exists("q:/usr/include/hunspell/hunspell
 
 
 unix {
-	LIBS += -lz
+	LIBS += -lz -lQtWebKit
     }
 
 DEFINES += NOCRYPT \
