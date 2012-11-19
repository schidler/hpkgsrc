$NetBSD$

--- common/osdep.h.orig	2011-11-12 20:33:53.035913728 +0000
+++ common/osdep.h
@@ -309,6 +309,8 @@ static ALWAYS_INLINE void x264_prefetch(
     sp.sched_priority -= p;\
     pthread_setschedparam( handle, policy, &sp );\
 }
+#elif SYS_HAIKU
+#define x264_lower_thread_priority(p)
 #else
 #include <unistd.h>
 #define x264_lower_thread_priority(p) { UNUSED int nice_ret = nice(p); }
