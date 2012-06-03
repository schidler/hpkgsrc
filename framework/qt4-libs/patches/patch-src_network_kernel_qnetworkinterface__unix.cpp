$NetBSD$

--- src/network/kernel/qnetworkinterface_unix.cpp.orig	2012-03-14 14:01:30.005505024 +0000
+++ src/network/kernel/qnetworkinterface_unix.cpp
@@ -52,6 +52,10 @@
 #include <sys/types.h>
 #include <sys/socket.h>
 
+#ifdef Q_OS_HAIKU
+# include <sys/sockio.h>
+#endif
+
 #ifdef Q_OS_SOLARIS
 # include <sys/sockio.h>
 #endif
@@ -92,7 +96,9 @@ static QNetworkInterface::InterfaceFlags
 {
     QNetworkInterface::InterfaceFlags flags = 0;
     flags |= (rawFlags & IFF_UP) ? QNetworkInterface::IsUp : QNetworkInterface::InterfaceFlag(0);
+#ifndef Q_OS_HAIKU
     flags |= (rawFlags & IFF_RUNNING) ? QNetworkInterface::IsRunning : QNetworkInterface::InterfaceFlag(0);
+#endif
     flags |= (rawFlags & IFF_BROADCAST) ? QNetworkInterface::CanBroadcast : QNetworkInterface::InterfaceFlag(0);
     flags |= (rawFlags & IFF_LOOPBACK) ? QNetworkInterface::IsLoopBack : QNetworkInterface::InterfaceFlag(0);
 #ifdef IFF_POINTOPOINT //cygwin doesn't define IFF_POINTOPOINT
