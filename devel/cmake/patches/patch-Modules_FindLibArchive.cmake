$NetBSD$

--- Modules/FindLibArchive.cmake.orig	2011-10-04 16:09:24.042991616 +0000
+++ Modules/FindLibArchive.cmake
@@ -62,5 +62,5 @@ unset(LIBARCHIVE_FOUND)
 
 if(LibArchive_FOUND)
   set(LibArchive_INCLUDE_DIRS ${LibArchive_INCLUDE_DIR})
-  set(LibArchive_LIBRARIES    ${LibArchive_LIBRARY})
+  set(LibArchive_LIBRARIES    ${LibArchive_LIBRARY} -llzma -lbz2)
 endif()
