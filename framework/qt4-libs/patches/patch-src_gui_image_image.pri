$NetBSD$

--- src/gui/image/image.pri.orig	2011-12-08 05:06:02.039321600 +0000
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
