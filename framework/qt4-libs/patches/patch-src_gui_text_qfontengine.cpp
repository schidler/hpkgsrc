$NetBSD$

--- src/gui/text/qfontengine.cpp.orig	2011-12-08 05:06:02.048496640 +0000
+++ src/gui/text/qfontengine.cpp
@@ -1,6 +1,6 @@
 /****************************************************************************
 **
-** Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
+** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
 ** All rights reserved.
 ** Contact: Nokia Corporation (qt-info@nokia.com)
 **
@@ -756,7 +756,7 @@ QFontEngineGlyphCache *QFontEngine::glyp
     return 0;
 }
 
-#if defined(Q_WS_WIN) || defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_WIN) || defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
 static inline QFixed kerning(int left, int right, const QFontEngine::KernPair *pairs, int numPairs)
 {
     uint left_right = (left << 16) + right;
