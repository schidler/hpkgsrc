$NetBSD$

--- src/libpsi/tools/globalshortcut/globalshortcut.pri.orig	2012-10-04 00:53:13.044826624 +0000
+++ src/libpsi/tools/globalshortcut/globalshortcut.pri
@@ -2,7 +2,7 @@ HEADERS += $$PWD/globalshortcutmanager.h
 SOURCES += $$PWD/globalshortcutmanager.cpp
 DEPENDPATH  += $$PWD
 
-unix:!mac {
+unix:!mac:!haiku {
 	SOURCES += $$PWD/globalshortcutmanager_x11.cpp
 }
 win32: {
@@ -16,3 +16,6 @@ mac: {
 	HEADERS += \
 		$$PWD/NDKeyboardLayout.h
 }
+haiku: {
+ 	SOURCES += $$PWD/globalshortcutmanager_haiku.cpp
+}
