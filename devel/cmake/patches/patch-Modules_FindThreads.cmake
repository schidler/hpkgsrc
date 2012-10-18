$NetBSD$

--- Modules/FindThreads.cmake.orig	2012-08-09 18:15:19.017825792 +0000
+++ Modules/FindThreads.cmake
@@ -130,6 +130,11 @@ IF(CMAKE_SYSTEM MATCHES "Windows")
   SET(Threads_FOUND TRUE)
 ENDIF()
 
+IF(HAIKU)
+  SET (CMAKE_THREAD_LIBS_INIT "-lroot")
+  SET(Threads_FOUND TRUE)
+ENDIF(HAIKU)
+
 IF(CMAKE_USE_PTHREADS_INIT)
   IF(CMAKE_SYSTEM MATCHES "HP-UX-*")
     # Use libcma if it exists and can be used.  It provides more
