$NetBSD$

--- Modules/Platform/Haiku.cmake.orig	2011-10-04 16:09:24.061603840 +0000
+++ Modules/Platform/Haiku.cmake
@@ -1,18 +1,26 @@
-SET(BEOS 1)
+SET(HAIKU 1)
+SET(UNIX 1)
 
-SET(CMAKE_DL_LIBS root be)
+SET(CMAKE_DL_LIBS "")
 SET(CMAKE_SHARED_LIBRARY_C_FLAGS "-fPIC")
-SET(CMAKE_SHARED_LIBRARY_CREATE_C_FLAGS "-nostart")
+SET(CMAKE_SHARED_LIBRARY_CREATE_C_FLAGS "-shared")
 SET(CMAKE_SHARED_LIBRARY_RUNTIME_C_FLAG "-Wl,-rpath,")
 SET(CMAKE_SHARED_LIBRARY_RUNTIME_C_FLAG_SEP ":")
+SET(CMAKE_SHARED_LIBRARY_RPATH_LINK_C_FLAG "-Wl,-rpath-link,")
 SET(CMAKE_SHARED_LIBRARY_SONAME_C_FLAG "-Wl,-soname,")
+SET(CMAKE_EXE_EXPORTS_C_FLAG "-Wl,--export-dynamic")
 
-INCLUDE(Platform/UnixPaths)
-LIST(APPEND CMAKE_SYSTEM_PREFIX_PATH /boot/common)
-LIST(APPEND CMAKE_SYSTEM_INCLUDE_PATH /boot/common/include)
-LIST(APPEND CMAKE_SYSTEM_LIBRARY_PATH /boot/common/lib)
-LIST(APPEND CMAKE_SYSTEM_PROGRAM_PATH /boot/common/bin)
-LIST(APPEND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES /boot/common/lib)
+LIST(APPEND CMAKE_SYSTEM_PREFIX_PATH
+  /boot/common/non-packaged
+  /boot/common
+  /boot/common/pkg
+  /boot/system
+  )
+LIST(APPEND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES
+  /boot/common/non-packaged/lib
+  /boot/common/lib
+  /boot/develop/lib/x86
+  )
 LIST(APPEND CMAKE_SYSTEM_INCLUDE_PATH /boot/develop/headers/3rdparty)
 LIST(APPEND CMAKE_SYSTEM_LIBRARY_PATH /boot/develop/lib/x86)
 
