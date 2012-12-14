$NetBSD$

--- libstdc++-v3/libsupc++/tinfo.cc.orig	2009-10-30 22:23:59.022806528 +0000
+++ libstdc++-v3/libsupc++/tinfo.cc
@@ -32,6 +32,15 @@ std::type_info::
 ~type_info ()
 { }
 
+#ifdef __HAIKU__
+#ifndef __GXX_MERGED_TYPEINFO_NAMES
+#define __GXX_MERGED_TYPEINFO_NAMES 0
+#endif
+#ifndef __GXX_TYPEINFO_EQUALITY_INLINE
+#define __GXX_TYPEINFO_EQUALITY_INLINE 0
+#endif
+#endif
+
 #if !__GXX_TYPEINFO_EQUALITY_INLINE
 
 // We can't rely on common symbols being shared between shared objects.
