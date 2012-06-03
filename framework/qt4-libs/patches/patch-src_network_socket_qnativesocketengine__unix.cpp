$NetBSD$

--- src/network/socket/qnativesocketengine_unix.cpp.orig	2012-03-14 14:01:30.011272192 +0000
+++ src/network/socket/qnativesocketengine_unix.cpp
@@ -875,6 +875,9 @@ qint64 QNativeSocketEnginePrivate::nativ
     memcpy(&sockAddrIPv6.sin6_addr.s6_addr, &tmp, sizeof(tmp));
     sockAddrSize = sizeof(sockAddrIPv6);
     sockAddrPtr = (struct sockaddr *)&sockAddrIPv6;
+#ifdef Q_OS_HAIKU
+	sockAddrIPv6.sin6_len = sockAddrSize;
+#endif
     } else
 #endif
     if (host.protocol() == QAbstractSocket::IPv4Protocol) {
@@ -884,6 +887,9 @@ qint64 QNativeSocketEnginePrivate::nativ
     sockAddrIPv4.sin_addr.s_addr = htonl(host.toIPv4Address());
     sockAddrSize = sizeof(sockAddrIPv4);
     sockAddrPtr = (struct sockaddr *)&sockAddrIPv4;
+#ifdef Q_OS_HAIKU
+	sockAddrIPv4.sin_len = sockAddrSize;
+#endif
     }
 
     // ignore the SIGPIPE signal
