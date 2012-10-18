$NetBSD$

--- Modules/Platform/Haiku.cmake.orig	2012-08-09 18:15:19.029884416 +0000
+++ Modules/Platform/Haiku.cmake
@@ -1,4 +1,4 @@
-SET(BEOS 1)
+SET(HAIKU 1)
 
 SET(CMAKE_DL_LIBS root be)
 SET(CMAKE_C_COMPILE_OPTIONS_PIC "-fPIC")
@@ -10,14 +10,9 @@ SET(CMAKE_SHARED_LIBRARY_RUNTIME_C_FLAG_
 SET(CMAKE_SHARED_LIBRARY_SONAME_C_FLAG "-Wl,-soname,")
 
 INCLUDE(Platform/UnixPaths)
-LIST(APPEND CMAKE_SYSTEM_PREFIX_PATH /boot/common)
-LIST(APPEND CMAKE_SYSTEM_INCLUDE_PATH /boot/common/include)
-LIST(APPEND CMAKE_SYSTEM_LIBRARY_PATH /boot/common/lib)
-LIST(APPEND CMAKE_SYSTEM_PROGRAM_PATH /boot/common/bin)
-LIST(APPEND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES /boot/common/lib)
-LIST(APPEND CMAKE_SYSTEM_INCLUDE_PATH /boot/develop/headers/3rdparty)
 LIST(APPEND CMAKE_SYSTEM_LIBRARY_PATH /boot/develop/lib/x86)
 
+
 IF(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
   SET(CMAKE_INSTALL_PREFIX "/boot/common" CACHE PATH
     "Install path prefix, prepended onto install directories." FORCE)
