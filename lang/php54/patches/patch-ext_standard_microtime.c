$NetBSD$

--- ext/standard/microtime.c.orig	2012-11-16 23:18:13.010485760 +0000
+++ ext/standard/microtime.c
@@ -105,7 +105,7 @@ PHP_FUNCTION(gettimeofday)
 #endif
 /* }}} */
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__) 
 /* {{{ proto array getrusage([int who])
    Returns an array of usage statistics */
 PHP_FUNCTION(getrusage)
