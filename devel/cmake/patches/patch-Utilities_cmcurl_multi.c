$NetBSD$

--- Utilities/cmcurl/multi.c.orig	2011-12-30 16:49:58.023855104 +0000
+++ Utilities/cmcurl/multi.c
@@ -1571,6 +1571,7 @@ static void singlesocket(struct Curl_mul
   easy->numsocks = num;
 }
 
+#undef curl_multi_socket
 static CURLMcode multi_socket(struct Curl_multi *multi,
                               bool checkall,
                               curl_socket_t s,
