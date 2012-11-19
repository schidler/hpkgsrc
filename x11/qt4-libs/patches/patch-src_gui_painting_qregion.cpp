$NetBSD$

--- src/gui/painting/qregion.cpp.orig	2012-09-11 01:36:51.001572864 +0000
+++ src/gui/painting/qregion.cpp
@@ -1631,6 +1631,9 @@ QT_END_INCLUDE_NAMESPACE
 #elif defined(Q_WS_QWS) || defined(Q_WS_QPA)
 static QRegionPrivate qrp;
 QRegion::QRegionData QRegion::shared_empty = {Q_BASIC_ATOMIC_INITIALIZER(1), &qrp};
+#elif defined(Q_WS_HAIKU)
+static QRegionPrivate qrp;
+QRegion::QRegionData QRegion::shared_empty =  { Q_BASIC_ATOMIC_INITIALIZER(1), &qrp};
 #endif
 
 typedef void (*OverlapFunc)(register QRegionPrivate &dest, register const QRect *r1, const QRect *r1End,
