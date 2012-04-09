$NetBSD$

--- goldendict.pro.orig	2010-12-03 21:12:46.000000000 +0000
+++ goldendict.pro
@@ -49,16 +49,19 @@ win32 { 
 unix {
 
   # This is to keep symbols for backtraces
-  QMAKE_CXXFLAGS += -rdynamic
-  QMAKE_LFLAGS += -rdynamic
-
+	!haiku {
+		QMAKE_CXXFLAGS += -rdynamic
+		QMAKE_LFLAGS += -rdynamic
+	}
     CONFIG += link_pkgconfig
     PKGCONFIG += vorbisfile \
     	vorbis \
 	ogg \
 	hunspell
-    LIBS += -lX11 \
-        -lXtst
+    !haiku {
+		LIBS += -lX11 \
+        	-lXtst
+    }
     PREFIX = $$(PREFIX)
     isEmpty( PREFIX ):PREFIX = /usr/local
     DEFINES += PROGRAM_DATA_DIR=\\\"$$PREFIX/share/apps/goldendict/\\\"
