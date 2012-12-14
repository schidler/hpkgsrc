$NetBSD$

--- gcc/crtstuff.c.orig	2010-12-23 12:08:21.053739520 +0000
+++ gcc/crtstuff.c
@@ -102,7 +102,9 @@ call_ ## FUNC (void)					\
     && defined(HAVE_LD_EH_FRAME_HDR) \
     && !defined(inhibit_libc) && !defined(CRTSTUFFT_O) \
     && defined(__GLIBC__) && __GLIBC__ >= 2
-#include <link.h>
+#ifndef __HAIKU__
+ #include <link.h>
+#endif
 /* uClibc pretends to be glibc 2.2 and DT_CONFIG is defined in its link.h.
    But it doesn't use PT_GNU_EH_FRAME ELF segment currently.  */
 # if !defined(__UCLIBC__) \
@@ -159,7 +161,9 @@ extern void *__deregister_frame_info_bas
 extern void __do_global_ctors_1 (void);
 
 /* Likewise for _Jv_RegisterClasses.  */
+#ifdef JCR_SECTION_NAME
 extern void _Jv_RegisterClasses (void *) TARGET_ATTRIBUTE_WEAK;
+#endif
 
 #ifdef OBJECT_FORMAT_ELF
 
