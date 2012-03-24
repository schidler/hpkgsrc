$NetBSD$

--- boost/config/select_platform_config.hpp.orig	2012-03-23 18:32:15.549453824 +0000
+++ boost/config/select_platform_config.hpp
@@ -45,6 +45,10 @@
 // BeOS
 #  define BOOST_PLATFORM_CONFIG "boost/config/platform/beos.hpp"
 
+#elif defined(__HAIKU__)
+// Haiku
+#  define BOOST_PLATFORM_CONFIG "boost/config/platform/haiku.hpp"
+
 #elif defined(macintosh) || defined(__APPLE__) || defined(__APPLE_CC__)
 // MacOS
 #  define BOOST_PLATFORM_CONFIG "boost/config/platform/macos.hpp"
