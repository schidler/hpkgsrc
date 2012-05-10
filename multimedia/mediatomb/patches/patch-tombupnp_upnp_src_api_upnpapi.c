$NetBSD$

--- tombupnp/upnp/src/api/upnpapi.c.orig	2010-03-25 14:58:12.057409536 +0000
+++ tombupnp/upnp/src/api/upnpapi.c
@@ -66,7 +66,7 @@
  #include <netinet/in.h>
  #include <arpa/inet.h>
 
- #ifndef SOLARIS
+ #if !defined(SOLARIS) && !defined(__HAIKU__)
 // #include <linux/if.h>
   #include <net/if.h>
  #else
