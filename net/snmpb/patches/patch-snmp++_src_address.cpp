$NetBSD$

--- snmp++/src/address.cpp.orig	2010-11-27 04:48:28.023330816 +0000
+++ snmp++/src/address.cpp
@@ -822,12 +822,12 @@ bool IpAddress::parse_address(const char
     char buf[2048]; // TODO: Too big buffer?
     int herrno = 0;
     hostent lookup_buf;
-#if defined(__sun) || defined (__QNX_NEUTRINO)
+#if defined(__sun) || defined (__QNX_NEUTRINO) || defined (__HAIKU__)
     lookupResult = gethostbyname_r(inaddr, &lookup_buf, buf, 2048, &herrno);
 #else    
     gethostbyname_r(inaddr, &lookup_buf, buf, 2048, &lookupResult, &herrno);
 #endif
-#ifdef SNMP_PP_IPv6
+#if defined(SNMP_PP_IPv6 ) && !defined (__HAIKU__)
     if (!lookupResult)
     {
 #ifdef __sun
@@ -957,7 +957,7 @@ int IpAddress::addr_to_friendly()
 #if defined (CPU) && CPU == PPC603
 	lookupResult = hostGetByAddr(ipAddr.s_addr, hName);
 #elif defined HAVE_GETHOSTBYADDR_R
-#if defined(__sun) || defined(__QNX_NEUTRINO)
+#if defined(__sun) || defined(__QNX_NEUTRINO) || defined (__HAIKU__)
     lookupResult = gethostbyaddr_r((char *) &ipAddr, sizeof(in_addr),
                                    AF_INET, &lookup, buf, 2048, &herrno);
 #else
@@ -991,7 +991,7 @@ int IpAddress::addr_to_friendly()
 #if defined (CPU) && CPU == PPC603
 	lookupResult = hostGetByAddr(ipAddr.s_addr, hName);
 #elif defined HAVE_GETHOSTBYADDR_R
-#if defined(__sun) || defined(__QNX_NEUTRINO)
+#if defined(__sun) || defined(__QNX_NEUTRINO) || defined (__HAIKU__)
     lookupResult = gethostbyaddr_r((char *) &ipAddr, sizeof(in_addr),
                                    AF_INET6, &lookup, buf, 2048, &herrno);
 #else
