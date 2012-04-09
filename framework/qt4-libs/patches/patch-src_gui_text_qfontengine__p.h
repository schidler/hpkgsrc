$NetBSD$

--- src/gui/text/qfontengine_p.h.orig	2011-12-08 05:06:02.060555264 +0000
+++ src/gui/text/qfontengine_p.h
@@ -1,6 +1,6 @@
 /****************************************************************************
 **
-** Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
+** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
 ** All rights reserved.
 ** Contact: Nokia Corporation (qt-info@nokia.com)
 **
@@ -180,7 +180,7 @@ public:
     virtual void recalcAdvances(QGlyphLayout *, QTextEngine::ShaperFlags) const {}
     virtual void doKerning(QGlyphLayout *, QTextEngine::ShaperFlags) const;
 
-#if !defined(Q_WS_X11) && !defined(Q_WS_WIN) && !defined(Q_WS_MAC) && !defined(Q_OS_SYMBIAN) && !defined(Q_WS_QPA)
+#if !defined(Q_WS_X11) && !defined(Q_WS_WIN) && !defined(Q_WS_MAC) && !defined(Q_OS_SYMBIAN) && !defined(Q_WS_QPA) && !defined(Q_WS_HAIKU)
     virtual void draw(QPaintEngine *p, qreal x, qreal y, const QTextItemInt &si) = 0;
 #endif
     virtual void addGlyphsToPath(glyph_t *glyphs, QFixedPoint *positions, int nglyphs,
@@ -259,7 +259,7 @@ public:
     bool symbol;
     mutable HB_FontRec hbFont;
     mutable HB_Face hbFace;
-#if defined(Q_WS_WIN) || defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_WIN) || defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
     struct KernPair {
         uint left_right;
         QFixed adjust;
