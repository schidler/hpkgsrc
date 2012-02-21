$NetBSD$

--- Source/kwsys/ProcessUNIX.c.orig	2011-10-04 16:09:25.022020096 +0000
+++ Source/kwsys/ProcessUNIX.c
@@ -63,9 +63,6 @@ do.
 #include <dirent.h>    /* DIR, dirent */
 #include <ctype.h>     /* isspace */
 
-#ifdef __HAIKU__
-#undef __BEOS__
-#endif
 
 #if defined(__VMS)
 # define KWSYSPE_VMS_NONBLOCK , O_NONBLOCK
