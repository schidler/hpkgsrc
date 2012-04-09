$NetBSD$

--- src/gui/text/qfont_p.h.orig	2011-12-08 05:06:02.053477376 +0000
+++ src/gui/text/qfont_p.h
@@ -1,6 +1,6 @@
 /****************************************************************************
 **
-** Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
+** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
 ** All rights reserved.
 ** Contact: Nokia Corporation (qt-info@nokia.com)
 **
@@ -285,6 +285,10 @@ public:
     int timer_id;
 };
 
+#ifdef Q_WS_HAIKU
+Q_GUI_EXPORT const char *qt_fontFamilyFromStyleHint(const QFontDef &request);
+#endif
+
 Q_GUI_EXPORT int qt_defaultDpiX();
 Q_GUI_EXPORT int qt_defaultDpiY();
 Q_GUI_EXPORT int qt_defaultDpi();
