$NetBSD$

--- upnp/src/api/upnpapi.c.orig	2008-04-10 16:17:35.000000000 +0000
+++ upnp/src/api/upnpapi.c
@@ -56,7 +56,7 @@
 	#include <unistd.h>
 
 
-	#if defined(_sun)
+	#if defined(_sun) || defined(__HAIKU__)
 		#include <sys/sockio.h>
 		#include <fcntl.h>
 	#elif defined(BSD) && BSD >= 199306
@@ -3793,7 +3793,11 @@ void printNodes( IXML_Node * tmpRoot, in
     }
     // Get the interface configuration information... 
     ifConf.ifc_len = sizeof szBuffer;
-    ifConf.ifc_ifcu.ifcu_buf = ( caddr_t ) szBuffer;
+    #ifdef __HAIKU__
+	    ifConf.ifc_value = ( caddr_t ) szBuffer;
+    #else
+    	ifConf.ifc_ifcu.ifcu_buf = ( caddr_t ) szBuffer;
+    #endif
     nResult = ioctl( LocalSock, SIOCGIFCONF, &ifConf );
 
     if( nResult < 0 ) {
