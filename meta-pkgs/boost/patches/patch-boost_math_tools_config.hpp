$NetBSD$

--- boost/math/tools/config.hpp.orig	2012-06-06 04:46:17.425197568 +0000
+++ boost/math/tools/config.hpp
@@ -24,7 +24,7 @@
 #include <boost/math/special_functions/detail/round_fwd.hpp>
 
 #if (defined(__CYGWIN__) || defined(__FreeBSD__) || defined(__NetBSD__) \
-   || (defined(__hppa) && !defined(__OpenBSD__)) || defined(__NO_LONG_DOUBLE_MATH)) && !defined(BOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS)
+   || defined(__HAIKU__) || (defined(__hppa) && !defined(__OpenBSD__)) || defined(__NO_LONG_DOUBLE_MATH)) && !defined(BOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS)
 #  define BOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS
 #endif
 #if BOOST_WORKAROUND(__BORLANDC__, BOOST_TESTED_AT(0x582))
