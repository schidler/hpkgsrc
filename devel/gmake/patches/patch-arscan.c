$NetBSD$

--- arscan.c.orig	2010-07-13 01:20:32.000000000 +0000
+++ arscan.c
@@ -253,7 +253,7 @@ ar_scan (const char *archive, ar_member_
 #endif
 
 #ifndef WINDOWS32
-# ifndef __BEOS__
+# if !defined (__BEOS__) && !defined (__HAIKU__)
 #  include <ar.h>
 # else
    /* BeOS 5 doesn't have <ar.h> but has archives in the same format
