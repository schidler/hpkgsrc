$NetBSD$

--- src/gui/painting/painting.pri.orig	2012-09-11 01:36:51.023592960 +0000
+++ src/gui/painting/painting.pri
@@ -173,7 +173,7 @@ unix:!mac:!symbian|qpa {
                 painting/qprinterinfo_unix.cpp
 }
 
-win32|x11|mac|embedded|qpa|symbian {
+win32|x11|mac|embedded|qpa|symbian|haiku {
         SOURCES += painting/qbackingstore.cpp
         HEADERS += painting/qbackingstore_p.h
 }
@@ -269,6 +269,12 @@ symbian {
         QMAKE_CXXFLAGS.ARMCC *= -O3
 }
 
+haiku {
+	SOURCES += \
+#		painting/qpaintdevice_haiku.cpp  \
+		painting/qcolormap_haiku.cpp
+}
+
 NEON_SOURCES += painting/qdrawhelper_neon.cpp
 NEON_HEADERS += painting/qdrawhelper_neon_p.h
 NEON_ASM += ../3rdparty/pixman/pixman-arm-neon-asm.S painting/qdrawhelper_neon_asm.S
