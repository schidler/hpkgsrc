$NetBSD$

--- src/gui/kernel/qguiplatformplugin.cpp.orig	2012-09-11 01:36:51.029360128 +0000
+++ src/gui/kernel/qguiplatformplugin.cpp
@@ -156,6 +156,8 @@ QString QGuiPlatformPlugin::styleName()
     return QLatin1String("Plastique");                  // default style for X11 and small devices
 #elif defined(Q_WS_MAC)
     return QLatin1String("Macintosh");              // default style for all Mac's
+#elif defined(Q_WS_HAIKU)
+    return QLatin1String("Haiku");              // default style for Haiku
 #elif defined(Q_WS_X11)
     QString stylename;
     switch(X11->desktopEnvironment) {
