$NetBSD$

Force QMAKE_YACC to look at .tools/bin/bison

--- bison.pri.orig	2011-12-17 17:00:38.000000000 +0000
+++ bison.pri
@@ -27,3 +27,5 @@ unix:linux* {
     QMAKE_YACC = /usr/bin/bison
   }
 }
+
+QMAKE_YACC = bison
