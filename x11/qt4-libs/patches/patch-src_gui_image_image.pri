$NetBSD$

--- src/gui/image/image.pri.orig	2012-09-11 01:36:51.059244544 +0000
+++ src/gui/image/image.pri
@@ -80,6 +80,10 @@ else:symbian {
     HEADERS += image/qpixmap_raster_symbian_p.h
     SOURCES += image/qpixmap_raster_symbian.cpp
 }
+else:haiku {
+    HEADERS += image/qpixmap_haiku_p.h
+    SOURCES += image/qpixmap_haiku.cpp
+}
 
 !symbian|contains(S60_VERSION, 3.1)|contains(S60_VERSION, 3.2) {
     SOURCES += image/qvolatileimagedata.cpp
