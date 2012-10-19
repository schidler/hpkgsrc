$NetBSD$

--- src/gui/text/qfontengine_p.h.orig	2012-09-11 01:36:51.016777216 +0000
+++ src/gui/text/qfontengine_p.h
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
