$NetBSD$

Define NULL if not defined.

--- src/base/TidyPointer.h.orig	2011-07-08 09:42:57.000000000 +0000
+++ src/base/TidyPointer.h
@@ -5,6 +5,10 @@
 #ifndef SQUID_BASE_TIDYPOINTER_H
 #define SQUID_BASE_TIDYPOINTER_H
 
+#ifndef NULL
+#define NULL ((void *)0)
+#endif
+
 /**
  * A pointer that deletes the object it points to when the pointer's owner or
  * context is gone. Similar to std::auto_ptr but without confusing assignment
