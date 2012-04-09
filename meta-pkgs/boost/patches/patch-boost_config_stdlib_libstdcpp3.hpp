$NetBSD$

--- boost/config/stdlib/libstdcpp3.hpp.orig	2012-03-24 16:34:11.239075328 +0000
+++ boost/config/stdlib/libstdcpp3.hpp
@@ -33,7 +33,8 @@
 
 #ifdef __GLIBCXX__ // gcc 3.4 and greater:
 #  if defined(_GLIBCXX_HAVE_GTHR_DEFAULT) \
-        || defined(_GLIBCXX__PTHREADS)
+        || defined(_GLIBCXX__PTHREADS) \
+		|| defined(__HAIKU__)
       //
       // If the std lib has thread support turned on, then turn it on in Boost
       // as well.  We do this because some gcc-3.4 std lib headers define _REENTANT
