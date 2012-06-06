$NetBSD$

--- unixconf.pri.orig	2012-05-20 15:15:31.005767168 +0000
+++ unixconf.pri
@@ -7,7 +7,9 @@ include(conf.pri)
 }
 
 QMAKE_CXXFLAGS += -Wformat -Wformat-security
+!haiku {
 QMAKE_LFLAGS_APP += -rdynamic
+}
 CONFIG += link_pkgconfig
 PKGCONFIG += libtorrent-rasterbar
 LIBS += -lssl -lcrypto
