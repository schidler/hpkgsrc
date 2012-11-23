$NetBSD$

--- gcc/defaults.h.orig	2012-11-22 18:10:38.865337344 +0000
+++ gcc/defaults.h
@@ -385,10 +385,13 @@ see the files COPYING3 and COPYING.RUNTI
    at program start-up time.  */
 #if defined (TARGET_ASM_NAMED_SECTION) && SUPPORTS_WEAK
 #ifndef JCR_SECTION_NAME
-#define JCR_SECTION_NAME ".jcr"
+/* Hack to remove _Jv crap on BeOS. i know it should be made somehow through
+	config files, but i don't know how (in which file ;) */
+#ifndef __HAIKU__
+ #define JCR_SECTION_NAME ".jcr"
+ #endif
+ #endif
 #endif
-#endif
-
 /* This decision to use a .jcr section can be overridden by defining
    USE_JCR_SECTION to 0 in target file.  This is necessary if target
    can define JCR_SECTION_NAME but does not have crtstuff or
