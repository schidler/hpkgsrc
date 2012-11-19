$NetBSD$

--- boost/config/stdlib/libstdcpp3.hpp.orig	2012-07-15 15:59:05.055312384 +0000
+++ boost/config/stdlib/libstdcpp3.hpp
@@ -32,7 +32,7 @@
 #endif
 
 #ifdef __GLIBCXX__ // gcc 3.4 and greater:
-#  if defined(_GLIBCXX_HAVE_GTHR_DEFAULT) \
+#  if defined(_GLIBCXX_HAVE_GTHR_DEFAULT)  || defined(__HAIKU__) \
         || defined(_GLIBCXX__PTHREADS) \
         || defined(_GLIBCXX_HAS_GTHREADS) \
         || defined(_WIN32)
