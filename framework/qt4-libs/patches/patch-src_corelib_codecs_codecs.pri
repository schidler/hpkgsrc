$NetBSD$

--- src/corelib/codecs/codecs.pri.orig	2012-03-14 14:01:18.049545216 +0000
+++ src/corelib/codecs/codecs.pri
@@ -25,7 +25,7 @@ unix {
         contains(QT_CONFIG,iconv) {
                 HEADERS += codecs/qiconvcodec_p.h
                 SOURCES += codecs/qiconvcodec.cpp
-                blackberry-*-qcc:LIBS_PRIVATE *= -liconv
+                qnx|haiku:LIBS_PRIVATE *= -liconv
         } else:contains(QT_CONFIG,gnu-libiconv) {
                 HEADERS += codecs/qiconvcodec_p.h
                 SOURCES += codecs/qiconvcodec.cpp
