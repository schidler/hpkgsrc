$NetBSD$

--- Modules/FindCURL.cmake.orig	2011-10-04 16:09:24.038797312 +0000
+++ Modules/FindCURL.cmake
@@ -38,6 +38,6 @@ INCLUDE(${CMAKE_CURRENT_LIST_DIR}/FindPa
 FIND_PACKAGE_HANDLE_STANDARD_ARGS(CURL DEFAULT_MSG CURL_LIBRARY CURL_INCLUDE_DIR)
 
 IF(CURL_FOUND)
-  SET(CURL_LIBRARIES ${CURL_LIBRARY})
+  SET(CURL_LIBRARIES ${CURL_LIBRARY} -lnetwork -lssl -lcrypto)
   SET(CURL_INCLUDE_DIRS ${CURL_INCLUDE_DIR})
 ENDIF(CURL_FOUND)
