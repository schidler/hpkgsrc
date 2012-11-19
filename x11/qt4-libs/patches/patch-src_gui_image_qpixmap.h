$NetBSD$

--- src/gui/image/qpixmap.h.orig	2012-09-11 01:36:51.065273856 +0000
+++ src/gui/image/qpixmap.h
@@ -57,6 +57,10 @@ class CFbsBitmap;
 class RSgImage;
 #endif
 
+#if defined(Q_OS_HAIKU)
+class BBitmap;
+#endif
+
 QT_BEGIN_NAMESPACE
 
 QT_MODULE(Gui)
@@ -172,6 +176,11 @@ public:
     static QPixmap fromMacCGImageRef(CGImageRef image);
 #endif
 
+#if defined(Q_OS_HAIKU)
+	BBitmap *toHaikuBitmap() const;
+	static QPixmap fromHaikuBitmap(BBitmap *);
+#endif
+
 #if defined(Q_OS_SYMBIAN)
     CFbsBitmap *toSymbianCFbsBitmap() const;
     static QPixmap fromSymbianCFbsBitmap(CFbsBitmap *bitmap);
