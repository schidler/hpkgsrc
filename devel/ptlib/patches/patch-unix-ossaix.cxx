$NetBSD$

--- src/ptlib/unix/ossaix.cxx.orig	2009-09-21 00:25:17.000000000 +0000
+++ src/ptlib/unix/ossaix.cxx
@@ -40,6 +40,10 @@
 #include <sys/time.h>
 #endif
 
+#if defined(P_DRAGONFLY)
+#include <machine/soundcard.h>
+#endif
+
 #ifdef P_FREEBSD
 #include <machine/soundcard.h>
 #endif
