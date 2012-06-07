$NetBSD$

--- src/corelib/codecs/codecs.pri.orig	2012-04-26 19:46:08.013369344 +0000
+++ src/corelib/codecs/codecs.pri
@@ -25,7 +25,7 @@ unix {
         contains(QT_CONFIG,iconv) {
                 HEADERS += codecs/qiconvcodec_p.h
                 SOURCES += codecs/qiconvcodec.cpp
-                qnx:LIBS_PRIVATE *= -liconv
+                qnx|haiku:LIBS_PRIVATE *= -liconv
         } else:contains(QT_CONFIG,gnu-libiconv) {
                 HEADERS += codecs/qiconvcodec_p.h
                 SOURCES += codecs/qiconvcodec.cpp
