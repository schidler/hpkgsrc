$NetBSD: patch-src_3rdparty_webkit_Source_WebCore_features.pri,v 1.1 2012/01/12 22:59:58 adam Exp $

Mac OS X: Problem linking with QTKit enabled.

--- src/3rdparty/webkit/Source/WebCore/features.pri.orig	2012-04-26 19:46:15.019922944 +0000
+++ src/3rdparty/webkit/Source/WebCore/features.pri
@@ -98,7 +98,7 @@ contains(DEFINES, ENABLE_SINGLE_THREADED
 
 # Nescape plugins support (NPAPI)
 !contains(DEFINES, ENABLE_NETSCAPE_PLUGIN_API=.) {
-    unix|win32-*:!embedded:!wince*: {
+    unix|win32-*:!embedded:!wince*:!haiku: {
         DEFINES += ENABLE_NETSCAPE_PLUGIN_API=1
     } else {
         DEFINES += ENABLE_NETSCAPE_PLUGIN_API=0
