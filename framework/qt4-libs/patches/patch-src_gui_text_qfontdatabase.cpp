$NetBSD$

--- src/gui/text/qfontdatabase.cpp.orig	2012-03-14 14:01:14.055836672 +0000
+++ src/gui/text/qfontdatabase.cpp
@@ -173,7 +173,7 @@ struct  QtFontSize
     unsigned short count : 16;
 #endif // Q_WS_X11
 
-#if defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
     QByteArray fileName;
     int fileIndex;
 #endif // defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN)
@@ -253,14 +253,14 @@ struct QtFontStyle
         delete [] weightName;
         delete [] setwidthName;
 #endif
-#if defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_X11) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
         while (count) {
             // bitfield count-- in while condition does not work correctly in mwccsym2
             count--;
 #ifdef Q_WS_X11
             free(pixelSizes[count].encodings);
 #endif
-#if defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
             pixelSizes[count].fileName.~QByteArray();
 #endif
 #if defined (Q_WS_QPA)
@@ -285,7 +285,7 @@ struct QtFontStyle
     const char *weightName;
     const char *setwidthName;
 #endif // Q_WS_X11
-#if defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
     bool antialiased;
 #endif
 
@@ -331,7 +331,7 @@ QtFontSize *QtFontStyle::pixelSize(unsig
     pixelSizes[count].count = 0;
     pixelSizes[count].encodings = 0;
 #endif
-#if defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN)
+#if defined(Q_WS_QWS) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
     new (&pixelSizes[count].fileName) QByteArray;
     pixelSizes[count].fileIndex = 0;
 #endif
@@ -507,6 +507,8 @@ QtFontFoundry *QtFontFamily::foundry(con
 
 // ### copied to tools/makeqpf/qpf2.cpp
 
+#if defined(Q_WS_HAIKU)
+
 // see the Unicode subset bitfields in the MSDN docs
 static int requiredUnicodeBits[QFontDatabase::WritingSystemsCount][2] = {
         // Any,
@@ -631,6 +633,7 @@ QList<QFontDatabase::WritingSystem> qt_d
 
     return writingSystems;
 }
+#endif
 
 #if defined(Q_OS_SYMBIAN) && defined(QT_NO_FREETYPE)
 // class with virtual destructor, derived in qfontdatabase_s60.cpp
@@ -1052,7 +1055,7 @@ static void initFontDef(const QtFontDesc
 #endif
 #endif
 
-#if defined(Q_WS_X11) || defined(Q_WS_WIN) || defined(Q_OS_SYMBIAN) || defined(Q_WS_QPA)
+#if defined(Q_WS_X11) || defined(Q_WS_WIN) || defined(Q_OS_SYMBIAN) || defined(Q_WS_QPA) || defined(Q_WS_HAIKU)
 static void getEngineData(const QFontPrivate *d, const QFontCache::Key &key)
 {
     // look for the requested font in the engine data cache
@@ -1117,6 +1120,8 @@ QT_BEGIN_INCLUDE_NAMESPACE
 #  include "qfontdatabase_qpa.cpp"
 #elif defined(Q_OS_SYMBIAN)
 #  include "qfontdatabase_s60.cpp"
+#elif defined(Q_WS_HAIKU)
+#  include "qfontdatabase_haiku.cpp"
 #endif
 QT_END_INCLUDE_NAMESPACE
 
