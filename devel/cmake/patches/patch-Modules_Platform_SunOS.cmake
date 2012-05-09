$NetBSD: patch-Modules_Platform_SunOS.cmake,v 1.1 2012/02/16 18:32:25 hans Exp $

Don't use gcc to link c++ libraries on SunOS,
unless we are really using a gcc lacking libstdc++.

See http://public.kitware.com/pipermail/cmake/2011-July/045300.html

--- Modules/Platform/SunOS.cmake.orig	2011-10-04 18:09:24.000000000 +0200
+++ Modules/Platform/SunOS.cmake	2012-01-11 17:50:43.768105308 +0100
@@ -5,12 +5,20 @@ IF(CMAKE_SYSTEM MATCHES "SunOS-4.*")
    SET(CMAKE_SHARED_LIBRARY_RUNTIME_C_FLAG_SEP ":")  
 ENDIF(CMAKE_SYSTEM MATCHES "SunOS-4.*")
 
+# Take the default c++ shared library creation rule from the
+# CMakeDefaultMakeRuleVariables.cmake file unless using GCC and libstdc++.so
+# does not exist, in which case fall back to the old implementation;
+# using gcc to invoke the linker.
 IF(CMAKE_COMPILER_IS_GNUCXX)
   IF(CMAKE_COMPILER_IS_GNUCC)
-    SET(CMAKE_CXX_CREATE_SHARED_LIBRARY
-        "<CMAKE_C_COMPILER> <CMAKE_SHARED_LIBRARY_CXX_FLAGS> <LINK_FLAGS> <CMAKE_SHARED_LIBRARY_CREATE_CXX_FLAGS>  <CMAKE_SHARED_LIBRARY_SONAME_CXX_FLAG><TARGET_SONAME> -o <TARGET> <OBJECTS> <LINK_LIBRARIES>")
-  ELSE(CMAKE_COMPILER_IS_GNUCC)
-    # Take default rule from CMakeDefaultMakeRuleVariables.cmake.
+    EXECUTE_PROCESS(
+      COMMAND ${CMAKE_CXX_COMPILER} -print-file-name=libstdc++.so
+      OUTPUT_VARIABLE SHARED_LIBSTDCXX_FILENAME
+      OUTPUT_STRIP_TRAILING_WHITESPACE)
+    IF(NOT EXISTS "${SHARED_LIBSTDCXX_FILENAME}")
+      SET(CMAKE_CXX_CREATE_SHARED_LIBRARY
+          "<CMAKE_C_COMPILER> <CMAKE_SHARED_LIBRARY_CXX_FLAGS> <LINK_FLAGS> <CMAKE_SHARED_LIBRARY_CREATE_CXX_FLAGS>  <CMAKE_SHARED_LIBRARY_SONAME_CXX_FLAG><TARGET_SONAME> -o <TARGET> <OBJECTS> <LINK_LIBRARIES>")
+    ENDIF(NOT EXISTS "${SHARED_LIBSTDCXX_FILENAME}")
   ENDIF(CMAKE_COMPILER_IS_GNUCC)
 ENDIF(CMAKE_COMPILER_IS_GNUCXX)
 INCLUDE(Platform/UnixPaths)
