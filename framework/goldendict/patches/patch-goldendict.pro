$NetBSD$

--- goldendict.pro.orig	2010-12-03 21:12:46.001310720 +0000
+++ goldendict.pro
@@ -22,7 +22,9 @@ INCLUDEPATH += .
 QT += webkit
 QT += xml
 QT += network
-QT += phonon
+!haiku {
+	QT += phonon
+	}
 CONFIG += exceptions \
     rtti \
     stl
@@ -49,18 +51,22 @@ win32 { 
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
+    !haiku {
     DEFINES += PROGRAM_DATA_DIR=\\\"$$PREFIX/share/apps/goldendict/\\\"
     target.path = $$PREFIX/bin/
     locale.path = $$PREFIX/share/apps/goldendict/locale/
@@ -79,6 +85,27 @@ unix {
     desktops2.path = $$PREFIX/share/app-install/desktop
     desktops2.files = redist/*.desktop
     INSTALLS += desktops2
+    }
+    haiku {
+    DEFINES += PROGRAM_DATA_DIR=\\\"$$PREFIX/data/apps/goldendict/\\\"
+    target.path = $$PREFIX/bin/
+    locale.path = $$PREFIX/data/apps/goldendict/locale/
+    locale.files = locale/*.qm
+    INSTALLS += target \
+        locale
+    icons.path = $$PREFIX/data/pixmaps
+    icons.files = redist/icons/*.*
+    INSTALLS += icons
+    icons2.path = $$PREFIX/data/app-install/icons
+    icons2.files = redist/icons/*.*
+    INSTALLS += icons2
+    desktops.path = $$PREFIX/data/applications
+    desktops.files = redist/*.desktop
+    INSTALLS += desktops
+    desktops2.path = $$PREFIX/data/app-install/desktop
+    desktops2.files = redist/*.desktop
+    INSTALLS += desktops2
+    }
 }
 DEFINES += PROGRAM_VERSION=\\\"$$VERSION\\\"
 
