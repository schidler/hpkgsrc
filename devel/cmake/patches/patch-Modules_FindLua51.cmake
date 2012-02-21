$NetBSD$

--- Modules/FindLua51.cmake.orig	2011-10-04 16:09:24.043253760 +0000
+++ Modules/FindLua51.cmake
@@ -57,13 +57,13 @@ FIND_LIBRARY(LUA_LIBRARY 
 
 IF(LUA_LIBRARY)
   # include the math library for Unix
-  IF(UNIX AND NOT APPLE)
+  IF(UNIX AND NOT APPLE AND NOT BEOS AND NOT HAIKU)
     FIND_LIBRARY(LUA_MATH_LIBRARY m)
     SET( LUA_LIBRARIES "${LUA_LIBRARY};${LUA_MATH_LIBRARY}" CACHE STRING "Lua Libraries")
   # For Windows and Mac, don't need to explicitly include the math library
   ELSE(UNIX AND NOT APPLE)
     SET( LUA_LIBRARIES "${LUA_LIBRARY}" CACHE STRING "Lua Libraries")
-  ENDIF(UNIX AND NOT APPLE)
+  ENDIF(UNIX AND NOT APPLE AND NOT BEOS AND NOT HAIKU)
 ENDIF(LUA_LIBRARY)
 
 INCLUDE(${CMAKE_CURRENT_LIST_DIR}/FindPackageHandleStandardArgs.cmake)
