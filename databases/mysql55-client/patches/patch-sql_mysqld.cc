$NetBSD: patch-sql_mysqld.cc,v 1.2 2011/07/08 09:32:07 adam Exp $

--- sql/mysqld.cc.orig	2012-08-29 08:50:46.021757952 +0000
+++ sql/mysqld.cc
@@ -160,7 +160,7 @@ extern int memcntl(caddr_t, size_t, int,
 int initgroups(const char *,unsigned int);
 #endif
 
-#if defined(__FreeBSD__) && defined(HAVE_IEEEFP_H) && !defined(HAVE_FEDISABLEEXCEPT)
+#if (defined(__FreeBSD__) || defined(__DragonFly__)) && defined(HAVE_IEEEFP_H) && !defined(HAVE_FEDISABLEEXCEPT)
 #include <ieeefp.h>
 #ifdef HAVE_FP_EXCEPT				// Fix type conflict
 typedef fp_except fp_except_t;
@@ -191,7 +191,7 @@ extern "C" my_bool reopen_fstreams(const
 
 inline void setup_fpu()
 {
-#if defined(__FreeBSD__) && defined(HAVE_IEEEFP_H) && !defined(HAVE_FEDISABLEEXCEPT)
+#if (defined(__FreeBSD__) || defined(__DragonFly__)) && defined(HAVE_IEEEFP_H) && !defined(HAVE_FEDISABLEEXCEPT)
   /* We can't handle floating point exceptions with threads, so disable
      this on freebsd
      Don't fall for overflow, underflow,divide-by-zero or loss of precision.
