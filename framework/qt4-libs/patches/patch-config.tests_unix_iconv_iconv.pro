$NetBSD$

--- config.tests/unix/iconv/iconv.pro.orig	2012-03-14 14:01:31.024117248 +0000
+++ config.tests/unix/iconv/iconv.pro
@@ -1,3 +1,3 @@
 SOURCES = iconv.cpp
 CONFIG -= qt dylib app_bundle
-mac|win32-g++*|qnx-*-qcc:LIBS += -liconv
+mac|win32-g++*|qnx|haiku:LIBS += -liconv