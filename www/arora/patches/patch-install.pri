$NetBSD$

--- install.pri.orig	2012-06-08 18:46:02.056098816 +0000
+++ install.pri
@@ -8,6 +8,10 @@ unix {
     INSTALLS += target
     target.path = $$BINDIR
 
-    DATADIR = $$PREFIX/share
+haiku {
+		DATADIR = $$PREFIX/data/arora
+	} else {
+		DATADIR = $$PREFIX/share
+	}
 }
 
