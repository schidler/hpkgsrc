$NetBSD$

--- mysys/my_init.c.orig	2012-08-29 08:50:46.024117248 +0000
+++ mysys/my_init.c
@@ -23,7 +23,7 @@
 #ifdef _MSC_VER
 #include <locale.h>
 #include <crtdbg.h>
-/* WSAStartup needs winsock library*/
+/* WSAStartup needs winsock library*/
 #pragma comment(lib, "ws2_32")
 #endif
 my_bool have_tcpip=0;
@@ -162,7 +162,7 @@ void my_end(int infoflag)
 
   if ((infoflag & MY_GIVE_INFO) || print_info)
   {
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
     struct rusage rus;
 #ifdef HAVE_purify
     /* Purify assumes that rus is uninitialized after getrusage call */
