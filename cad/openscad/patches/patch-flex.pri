$NetBSD$

Force QMAKE_LEX to look at ${PREFIX}/bin/flex

--- flex.pri.orig	2011-12-17 17:00:39.000000000 +0000
+++ flex.pri
@@ -18,3 +18,5 @@ unix:linux* {
     QMAKE_LEX = /usr/bin/flex
   }
 }
+
+QMAKE_LEX = flex
