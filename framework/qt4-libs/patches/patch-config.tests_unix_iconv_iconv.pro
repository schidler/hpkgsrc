$NetBSD$

--- config.tests/unix/iconv/iconv.pro.orig	2012-04-26 19:46:07.047185920 +0000
+++ config.tests/unix/iconv/iconv.pro
@@ -1,3 +1,3 @@
 SOURCES = iconv.cpp
 CONFIG -= qt dylib app_bundle
-mac|win32-g++*|qnx:LIBS += -liconv
+mac|win32-g++*|qnx|haiku:LIBS += -liconv
