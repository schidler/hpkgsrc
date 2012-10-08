$NetBSD$

--- iris/src/jdns/qjdns_sock.cpp.orig	2012-10-04 00:53:09.059244544 +0000
+++ iris/src/jdns/qjdns_sock.cpp
@@ -44,8 +44,13 @@
 # include <arpa/inet.h>
 #endif
 
+#ifdef Q_OS_HAIKU
+# include <netinet6/in6.h>
+#endif
+
 #ifndef QT_NO_IPV6
 # define HAVE_IPV6
+#ifndef Q_OS_HAIKU
 # ifndef s6_addr
 #  define IPPROTO_IPV6 41
    struct in6_addr
@@ -59,6 +64,7 @@
    };
 #  define s6_addr _S6_un._S6_u8
 # endif
+# endif
 # ifndef IPV6_JOIN_GROUP
 #  define IPV6_JOIN_GROUP 12
 #  define IPV6_MULTICAST_HOPS 10
