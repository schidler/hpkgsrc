$NetBSD$

* curl/types.h is not used (empty) since curl-7.12.0 and removed at curl-7.21.7.

--- lib/curl_transport/curltransaction.c.orig	2011-08-11 01:28:08.029884416 +0000
+++ lib/curl_transport/curltransaction.c
@@ -15,7 +15,6 @@
 #include "version.h"
 
 #include <curl/curl.h>
-#include <curl/types.h>
 #include <curl/easy.h>
 
 #include "curlversion.h"
