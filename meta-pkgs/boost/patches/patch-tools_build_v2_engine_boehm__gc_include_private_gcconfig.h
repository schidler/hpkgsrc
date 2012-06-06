$NetBSD$

--- tools/build/v2/engine/boehm_gc/include/private/gcconfig.h.orig	2012-06-06 04:46:34.478150656 +0000
+++ tools/build/v2/engine/boehm_gc/include/private/gcconfig.h
@@ -1,4 +1,4 @@
-/* 
+f/* 
  * Copyright 1988, 1989 Hans-J. Boehm, Alan J. Demers
  * Copyright (c) 1991-1994 by Xerox Corporation.  All rights reserved.
  * Copyright (c) 1996 by Silicon Graphics.  All rights reserved.
@@ -210,6 +210,11 @@
 #   endif
 #   define mach_type_known
 # endif
+# if defined(__HAIKU__) && defined(_X86_)
+#    define I386
+#    define HAIKU
+#    define mach_type_known
+# endif
 # if defined(__BEOS__) && defined(_X86_)
 #    define I386
 #    define BEOS
@@ -1007,6 +1012,13 @@
 #       define DATASTART ((ptr_t)((((word) (etext)) + 0xfff) & ~0xfff))
 #       define STACKBOTTOM ((ptr_t) 0x3ffff000) 
 #   endif
+#   ifdef HAIKU
+#     define OS_TYPE "HAIKU"
+#     include <OS.h>
+#     define GETPAGESIZE() B_PAGE_SIZE
+      extern int etext[];
+#     define DATASTART ((ptr_t)((((word) (etext)) + 0xfff) & ~0xfff))
+#   endif
 #   ifdef BEOS
 #     define OS_TYPE "BEOS"
 #     include <OS.h>
