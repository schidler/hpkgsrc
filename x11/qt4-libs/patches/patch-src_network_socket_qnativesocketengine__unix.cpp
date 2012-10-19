$NetBSD$

--- src/network/socket/qnativesocketengine_unix.cpp.orig	2012-09-11 01:36:50.012320768 +0000
+++ src/network/socket/qnativesocketengine_unix.cpp
@@ -888,6 +888,9 @@ qint64 QNativeSocketEnginePrivate::nativ
 #endif
         sockAddrSize = sizeof(sockAddrIPv6);
         sockAddrPtr = (struct sockaddr *)&sockAddrIPv6;
+#ifdef Q_OS_HAIKU
+		sockAddrIPv6.sin6_len = sockAddrSize;
+#endif
     } else
 #endif
     if (host.protocol() == QAbstractSocket::IPv4Protocol) {
@@ -897,6 +900,9 @@ qint64 QNativeSocketEnginePrivate::nativ
         sockAddrIPv4.sin_addr.s_addr = htonl(host.toIPv4Address());
         sockAddrSize = sizeof(sockAddrIPv4);
         sockAddrPtr = (struct sockaddr *)&sockAddrIPv4;
+#ifdef Q_OS_HAIKU
+		sockAddrIPv4.sin_len = sockAddrSize;
+#endif
     }
 
     // ignore the SIGPIPE signal
