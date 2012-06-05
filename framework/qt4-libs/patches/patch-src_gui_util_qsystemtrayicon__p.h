$NetBSD$

--- src/gui/util/qsystemtrayicon_p.h.orig	2012-03-14 14:01:15.050069504 +0000
+++ src/gui/util/qsystemtrayicon_p.h
@@ -178,6 +178,12 @@ private:
 };
 #endif // Q_WS_X11
 
+#if defined(Q_WS_HAIKU)
+QT_BEGIN_INCLUDE_NAMESPACE
+#include "qsystemtrayicon_haiku.h"
+QT_END_INCLUDE_NAMESPACE
+#endif // Q_WS_HAIKU
+
 QT_END_NAMESPACE
 
 #endif // QT_NO_SYSTEMTRAYICON
