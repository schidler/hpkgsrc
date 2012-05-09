--- Utilities/cmcurl/easy.c.orig	2012-05-09 23:25:09.624164864 +0600
+++ Utilities/cmcurl/easy.c	2012-05-09 23:14:14.026476544 +0600
@@ -335,7 +335,7 @@
  * curl_easy_setopt() is the external interface for setting options on an
  * easy handle.
  */
-
+#undef curl_easy_setopt
 CURLcode curl_easy_setopt(CURL *curl, CURLoption tag, ...)
 {
   va_list arg;
@@ -515,6 +515,7 @@
  * curl_easy_getinfo() is an external interface that allows an app to retrieve
  * information from a performed transfer and similar.
  */
+#undef curl_easy_getinfo
 CURLcode curl_easy_getinfo(CURL *curl, CURLINFO info, ...)
 {
   va_list arg;
