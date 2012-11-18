$NetBSD$

On Mac OS X, use PkgSrc libtool.

--- cmake/libutils.cmake.orig	2012-08-29 08:50:46.023330816 +0000
+++ cmake/libutils.cmake
@@ -178,7 +178,7 @@ MACRO(MERGE_STATIC_LIBS TARGET OUTPUT_NA
       "${LINKER_EXTRA_FLAGS}")
   ELSE()
     GET_TARGET_PROPERTY(TARGET_LOCATION ${TARGET} LOCATION)  
-    IF(APPLE)
+    IF(0)
       # Use OSX's libtool to merge archives (ihandles universal 
       # binaries properly)
       ADD_CUSTOM_COMMAND(TARGET ${TARGET} POST_BUILD
