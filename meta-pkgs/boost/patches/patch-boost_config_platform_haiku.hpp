$NetBSD$

--- boost/config/platform/haiku.hpp.orig	2012-11-12 12:08:16.174850048 +0000
+++ boost/config/platform/haiku.hpp
@@ -0,0 +1,28 @@
+//  (C) Copyright John Maddock 2001. 
+//  Use, modification and distribution are subject to the 
+//  Boost Software License, Version 1.0. (See accompanying file 
+//  LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
+
+//  See http://www.boost.org for most recent version.
+
+//  Haiku specific config options:
+
+#define BOOST_PLATFORM "Haiku"
+
+#define BOOST_HAS_UNISTD_H
+
+#define BOOST_MATH_NO_LONG_DOUBLE_MATH_FUNCTIONS
+
+#define BOOST_HAS_THREADS
+
+//
+// thread API's not auto detected:
+//
+#define BOOST_HAS_SCHED_YIELD
+#define BOOST_HAS_NANOSLEEP
+#define BOOST_HAS_GETTIMEOFDAY
+#define BOOST_HAS_PTHREAD_MUTEXATTR_SETTYPE
+#define BOOST_HAS_SIGACTION
+
+// boilerplate code:
+#include <boost/config/posix_features.hpp>
