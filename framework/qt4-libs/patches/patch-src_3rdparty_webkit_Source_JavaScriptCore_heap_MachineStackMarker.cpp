$NetBSD: patch-src_3rdparty_webkit_Source_JavaScriptCore_heap_MachineStackMarker.cpp,v 1.2 2012/04/09 09:12:49 adam Exp $

--- src/3rdparty/webkit/Source/JavaScriptCore/heap/MachineStackMarker.cpp.orig	2012-03-14 14:01:26.034340864 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/heap/MachineStackMarker.cpp
@@ -382,6 +382,8 @@ static size_t getPlatformThreadRegisters
 #if HAVE(PTHREAD_NP_H) || OS(NETBSD)
     // e.g. on FreeBSD 5.4, neundorf@kde.org
     pthread_attr_get_np(platformThread, &regs);
+#elif OS(HAIKU)
+	//!!!!!
 #else
     // FIXME: this function is non-portable; other POSIX systems may have different np alternatives
     pthread_getattr_np(platformThread, &regs);
@@ -391,6 +393,7 @@ static size_t getPlatformThreadRegisters
 #error Need a way to get thread registers on this platform
 #endif
 }
+#endif
 
 static inline void* otherThreadStackPointer(const PlatformThreadRegisters& regs)
 {
@@ -429,6 +432,10 @@ static inline void* otherThreadStackPoin
     return reinterpret_cast<void*>((uintptr_t) regs.Esp);
 #elif CPU(X86_64) && OS(WINDOWS)
     return reinterpret_cast<void*>((uintptr_t) regs.Rsp);
+#elif OS(HAIKU)
+    thread_info threadInfo;
+    get_thread_info(find_thread(NULL), &threadInfo);
+    return threadInfo.stack_end;
 #elif USE(PTHREADS)
     void* stackBase = 0;
     size_t stackSize = 0;
