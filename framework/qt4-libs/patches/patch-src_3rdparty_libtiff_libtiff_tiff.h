$NetBSD$

--- src/3rdparty/libtiff/libtiff/tiff.h.orig	2012-03-14 14:01:18.013631488 +0000
+++ src/3rdparty/libtiff/libtiff/tiff.h
@@ -28,6 +28,9 @@
 #define	_TIFF_
 
 #include "tiffconf.h"
+#ifdef Q_OS_HAIKU
+#include <SupportDefs.h>
+#endif
 
 /*
  * Tag Image File Format (TIFF)
@@ -69,6 +72,7 @@ typedef	unsigned char uint8;
 typedef	short int16;
 #endif
 typedef	unsigned short uint16;	/* sizeof (uint16) must == 2 */
+#ifndef Q_OS_HAIKU
 #if SIZEOF_INT == 4
 #ifndef HAVE_INT32
 typedef	int int32;
@@ -80,6 +84,7 @@ typedef	long int32;
 #endif
 typedef	unsigned long uint32;	/* sizeof (uint32) must == 4 */
 #endif
+#endif
 
 /* For TIFFReassignTagToIgnore */
 enum TIFFIgnoreSense /* IGNORE tag table */
