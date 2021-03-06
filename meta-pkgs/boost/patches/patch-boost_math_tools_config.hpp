$NetBSD$

--- boost/math/tools/config.hpp.orig	2012-05-14 17:01:32.058458112 +0000
+++ boost/math/tools/config.hpp
@@ -24,7 +24,7 @@
 #include <boost/math/tools/user.hpp>
 #include <boost/math/special_functions/detail/round_fwd.hpp>
 
-#if (defined(__CYGWIN__) || defined(__FreeBSD__) || defined(__NetBSD__) \
+#if (defined(__CYGWIN__) || defined(__FreeBSD__) || defined(__NetBSD__) || defined(__HAIKU__) \
    || (defined(__hppa) && !defined(__OpenBSD__)) || (defined(__NO_LONG_DOUBLE_MATH) && (DBL_MANT_DIG != LDBL_MANT_DIG))) \
    && !defined(BOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS)
 #  define BOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS
