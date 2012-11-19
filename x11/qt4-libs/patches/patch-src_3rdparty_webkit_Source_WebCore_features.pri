$NetBSD$

Mac OS X: Problem linking with QTKit enabled.

--- src/3rdparty/webkit/Source/WebCore/features.pri.orig	2012-09-11 01:36:48.058982400 +0000
+++ src/3rdparty/webkit/Source/WebCore/features.pri
@@ -98,7 +98,7 @@ contains(DEFINES, ENABLE_SINGLE_THREADED
 
 # Nescape plugins support (NPAPI)
 !contains(DEFINES, ENABLE_NETSCAPE_PLUGIN_API=.) {
-    unix|win32-*:!embedded:!wince*: {
+    unix|win32-*:!embedded:!wince*:!haiku: {
         DEFINES += ENABLE_NETSCAPE_PLUGIN_API=1
     } else {
         DEFINES += ENABLE_NETSCAPE_PLUGIN_API=0
@@ -165,8 +165,8 @@ symbian|maemo5|maemo6 {
     mac:!contains(DEFINES, USE_QTMULTIMEDIA=1) {
         DEFINES -= ENABLE_VIDEO=0
         DEFINES += ENABLE_VIDEO=1
-        DEFINES += WTF_USE_QTKIT=1
-        DEFINES -= WTF_USE_QTKIT=0
+        DEFINES -= WTF_USE_QTKIT=1
+        DEFINES += WTF_USE_QTKIT=0
     } else: linux-*:!contains(DEFINES, USE_QTMULTIMEDIA=1) {
         !contains(QT_CONFIG, no-pkg-config):system(pkg-config --exists glib-2.0 gio-2.0 gstreamer-0.10): {
             DEFINES -= ENABLE_VIDEO=0
