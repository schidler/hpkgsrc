$NetBSD$

--- CPP/myWindows/config.h.orig	2011-01-22 06:24:42.039583744 +0000
+++ CPP/myWindows/config.h
@@ -24,7 +24,7 @@
 
   #endif /* !ENV_MACOSX && !ENV_BEOS */
 
-  #if !defined(ENV_BEOS)
+  #if !defined(ENV_BEOS) && !defined(ENV_HAIKU)
     #define ENV_HAVE_GETPASS
 
     #if !defined(sun)
