$NetBSD$

--- boost/interprocess/detail/workaround.hpp.orig	2012-06-06 04:46:17.330563584 +0000
+++ boost/interprocess/detail/workaround.hpp
@@ -64,7 +64,7 @@
    #endif
 
    //Check for XSI shared memory objects. They are available in nearly all UNIX platforms
-   #if !defined(__QNXNTO__)
+   #if !defined(__QNXNTO__)  || !defined(__HAIKU__)
    # define BOOST_INTERPROCESS_XSI_SHARED_MEMORY_OBJECTS
    #endif
 
