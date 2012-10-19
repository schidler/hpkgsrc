$NetBSD$

--- src/gui/styles/qstylefactory.cpp.orig	2012-09-11 01:36:51.003407872 +0000
+++ src/gui/styles/qstylefactory.cpp
@@ -54,6 +54,9 @@
 #ifndef QT_NO_STYLE_CLEANLOOKS
 #include "qcleanlooksstyle.h"
 #endif
+#ifndef QT_NO_STYLE_HAIKU
+#include "qhaikustyle.h"
+#endif
 #ifndef QT_NO_STYLE_GTK
 #include "qgtkstyle.h"
 #endif
@@ -172,6 +175,11 @@ QStyle *QStyleFactory::create(const QStr
         ret = new QCleanlooksStyle;
     else
 #endif
+#ifndef QT_NO_STYLE_HAIKU
+    if (style == QLatin1String("haiku"))
+        ret = new QHaikuStyle;
+    else
+#endif
 #ifndef QT_NO_STYLE_GTK
     if (style == QLatin1String("gtk") || style == QLatin1String("gtk+"))
         ret = new QGtkStyle;
@@ -257,6 +265,10 @@ QStringList QStyleFactory::keys()
     if (!list.contains(QLatin1String("Cleanlooks")))
         list << QLatin1String("Cleanlooks");
 #endif
+#ifndef QT_NO_STYLE_HAIKU
+    if (!list.contains(QLatin1String("Haiku")))
+        list << QLatin1String("Haiku");
+#endif
 #ifndef QT_NO_STYLE_MAC
     QString mstyle = QLatin1String("Macintosh");
 # ifdef Q_WS_MAC
