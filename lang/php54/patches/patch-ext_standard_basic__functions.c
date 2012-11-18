$NetBSD$

Work around VAX FP lack of INF

--- ext/standard/basic_functions.c.orig	2012-10-16 10:05:41.066846720 +0000
+++ ext/standard/basic_functions.c
@@ -1830,7 +1830,7 @@ ZEND_BEGIN_ARG_INFO_EX(arginfo_gettimeof
 ZEND_END_ARG_INFO()
 #endif
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
 ZEND_BEGIN_ARG_INFO_EX(arginfo_getrusage, 0, 0, 0)
 	ZEND_ARG_INFO(0, who)
 ZEND_END_ARG_INFO()
@@ -2941,7 +2941,7 @@ const zend_function_entry basic_function
 	PHP_FE(gettimeofday,													arginfo_gettimeofday)
 #endif
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
 	PHP_FE(getrusage,														arginfo_getrusage)
 #endif
 
@@ -3498,7 +3498,7 @@ PHPAPI double php_get_nan(void) /* {{{ *
 
 PHPAPI double php_get_inf(void) /* {{{ */
 {
-#if HAVE_HUGE_VAL_INF
+#if defined(HAVE_HUGE_VAL_INF) || defined(__vax__)
 	return HUGE_VAL;
 #elif defined(__i386__) || defined(_X86_) || defined(ALPHA) || defined(_ALPHA) || defined(__alpha)
 	double val = 0.0;
