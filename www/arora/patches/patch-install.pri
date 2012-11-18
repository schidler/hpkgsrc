$NetBSD$

--- install.pri.orig	2010-09-27 02:42:17.065011712 +0000
+++ install.pri
@@ -8,6 +8,10 @@ unix {
     INSTALLS += target
     target.path = $$BINDIR
 
-    DATADIR = $$PREFIX/share
+haiku {
+		DATADIR = $$PREFIX/data
+	} else {
+		DATADIR = $$PREFIX/share
+	}
 }
 
