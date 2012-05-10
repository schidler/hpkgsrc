$NetBSD$

--- src/zmm/atomic.h.orig	2010-03-25 14:58:08.028835840 +0000
+++ src/zmm/atomic.h
@@ -75,7 +75,7 @@ static inline int atomic_get(mt_atomic_t
         unsigned char c;
         __asm__ __volatile__(
             ASM_LOCK "decl %0; sete %1"
-            :"=m" (at->x), "=g" (c)
+            :"=m" (at->x), "=q" (c)
             :"m" (at->x)
             :"cc"
         );
