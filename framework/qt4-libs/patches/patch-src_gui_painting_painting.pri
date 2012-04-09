$NetBSD$

--- src/gui/painting/painting.pri.orig	2011-12-08 05:06:02.054788096 +0000
+++ src/gui/painting/painting.pri
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
