$NetBSD$

--- src/lxt2_read.c.orig	2006-01-27 15:43:58.000000000 +0000
+++ src/lxt2_read.c
@@ -62,8 +62,8 @@ _LXT2_RD_INLINE static unsigned int lxt2
 {
 unsigned short x = *((unsigned short *)((unsigned char *)mm+offset));
 
-  __asm("xchgb %b0,%h0" :
-        "=q" (x)        :
+  __asm("rorw $8, %w1" :
+        "=r" (x)        :
         "0" (x));
 
     return (unsigned int) x;
