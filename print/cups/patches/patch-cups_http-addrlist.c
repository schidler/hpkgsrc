$NetBSD$

--- cups/http-addrlist.c.orig	2012-04-25 09:17:19.855638016 +0000
+++ cups/http-addrlist.c
@@ -575,7 +575,9 @@ httpAddrGetList(const char *hostname,	/*
 #  ifdef WIN32
 	temp->addr.ipv6.sin6_addr.u.Byte[15]   = 1;
 #  else
+#  ifndef __HAIKU__
 	temp->addr.ipv6.sin6_addr.s6_addr32[3] = htonl(1);
+#  endif
 #  endif /* WIN32 */
 
         if (!first)
