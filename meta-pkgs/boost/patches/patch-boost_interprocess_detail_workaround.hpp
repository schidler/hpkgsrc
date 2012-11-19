$NetBSD$

--- boost/interprocess/detail/workaround.hpp.orig	2012-05-24 16:43:57.051642368 +0000
+++ boost/interprocess/detail/workaround.hpp
@@ -54,7 +54,7 @@
    #endif
 
    //Check for XSI shared memory objects. They are available in nearly all UNIX platforms
-   #if !defined(__QNXNTO__)
+   #if !defined(__QNXNTO__)  || !defined(__HAIKU__)
       #define BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
    #endif
 
