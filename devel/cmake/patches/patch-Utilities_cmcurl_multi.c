--- Utilities/cmcurl/multi.c.orig	2012-05-09 23:25:19.864550912 +0600
+++ Utilities/cmcurl/multi.c	2012-05-09 23:25:17.192413696 +0600
@@ -1705,6 +1705,8 @@
 }
 
 
+/* we define curl_multi_socket() in the public multi.h header */
+#undef curl_multi_socket
 CURLMcode curl_multi_socket(CURLM *multi_handle, curl_socket_t s,
                             int *running_handles)
 {
