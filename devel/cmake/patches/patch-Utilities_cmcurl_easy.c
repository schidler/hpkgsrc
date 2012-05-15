$NetBSD$

--- Utilities/cmcurl/easy.c.orig	2011-12-30 16:49:58.017563648 +0000
+++ Utilities/cmcurl/easy.c
@@ -335,7 +335,7 @@ CURL *curl_easy_init(void)
  * curl_easy_setopt() is the external interface for setting options on an
  * easy handle.
  */
-
+#undef curl_easy_setopt
 CURLcode curl_easy_setopt(CURL *curl, CURLoption tag, ...)
 {
   va_list arg;
@@ -515,6 +515,7 @@ void Curl_easy_initHandleData(struct Ses
  * curl_easy_getinfo() is an external interface that allows an app to retrieve
  * information from a performed transfer and similar.
  */
+#undef curl_easy_getinfo
 CURLcode curl_easy_getinfo(CURL *curl, CURLINFO info, ...)
 {
   va_list arg;
