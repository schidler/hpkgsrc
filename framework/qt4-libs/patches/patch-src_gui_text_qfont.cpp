$NetBSD$

--- src/gui/text/qfont.cpp.orig	2011-12-08 05:06:02.051904512 +0000
+++ src/gui/text/qfont.cpp
@@ -1,6 +1,6 @@
 /****************************************************************************
 **
-** Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
+** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
 ** All rights reserved.
 ** Contact: Nokia Corporation (qt-info@nokia.com)
 **
@@ -232,6 +232,8 @@ Q_GUI_EXPORT int qt_defaultDpiY()
     }
 #elif defined(Q_OS_SYMBIAN)
     dpi = S60->defaultDpiY;
+#elif defined(Q_WS_HAIKU)
+	dpi = 72;    
 #endif // Q_WS_X11
 
     return dpi;
