$NetBSD$

--- mysys/my_init.c.orig	2011-10-12 12:10:24.042205184 +0000
+++ mysys/my_init.c
@@ -162,7 +162,7 @@ void my_end(int infoflag)
 
   if ((infoflag & MY_GIVE_INFO) || print_info)
   {
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
     struct rusage rus;
 #ifdef HAVE_purify
     /* Purify assumes that rus is uninitialized after getrusage call */
