$NetBSD$

--- boost/config/select_platform_config.hpp.orig	2011-10-10 11:50:55.054788096 +0000
+++ boost/config/select_platform_config.hpp
@@ -41,6 +41,10 @@
 // win32:
 #  define BOOST_PLATFORM_CONFIG "boost/config/platform/win32.hpp"
 
+#elif defined(__HAIKU__)
+// Haiku
+#  define BOOST_PLATFORM_CONFIG "boost/config/platform/haiku.hpp"
+
 #elif defined(__BEOS__)
 // BeOS
 #  define BOOST_PLATFORM_CONFIG "boost/config/platform/beos.hpp"
