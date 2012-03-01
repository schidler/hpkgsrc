$NetBSD$

--- configure.cmake.orig	2011-10-12 12:10:25.050069504 +0000
+++ configure.cmake
@@ -135,14 +135,14 @@ IF(UNIX)
   IF(NOT LIBM)
     MY_SEARCH_LIBS(__infinity m LIBM)
   ENDIF()
-  MY_SEARCH_LIBS(gethostbyname_r  "nsl_r;nsl" LIBNSL)
-  MY_SEARCH_LIBS(bind "bind;socket" LIBBIND)
+  MY_SEARCH_LIBS(gethostbyname_r  "nsl_r;nsl;network" LIBNSL)
+  MY_SEARCH_LIBS(bind "bind;socket;network" LIBBIND)
   MY_SEARCH_LIBS(crypt crypt LIBCRYPT)
-  MY_SEARCH_LIBS(setsockopt socket LIBSOCKET)
-  MY_SEARCH_LIBS(dlopen dl LIBDL)
+  MY_SEARCH_LIBS(setsockopt "socket;network" LIBSOCKET)
+  MY_SEARCH_LIBS(dlopen "dl;root" LIBDL)
   MY_SEARCH_LIBS(sched_yield rt LIBRT)
   IF(NOT LIBRT)
-    MY_SEARCH_LIBS(clock_gettime rt LIBRT)
+    MY_SEARCH_LIBS(clock_gettime "rt;root" LIBRT)
   ENDIF()
   FIND_PACKAGE(Threads)
 
