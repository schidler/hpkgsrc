$NetBSD: patch-src_3rdparty_webkit_Source_JavaScriptCore_heap_MachineStackMarker.cpp,v 1.1 2012/02/16 20:42:46 hans Exp $

--- src/3rdparty/webkit/Source/JavaScriptCore/heap/MachineStackMarker.cpp.orig	2011-12-08 05:06:02.026476544 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/heap/MachineStackMarker.cpp
@@ -20,6 +20,9 @@
  */
 
 #include "config.h"
+#if OS(SOLARIS)
+#undef _FILE_OFFSET_BITS
+#endif
 #include "MachineStackMarker.h"
 
 #include "ConservativeRoots.h"
@@ -60,6 +63,10 @@
 #include <unistd.h>
 
 #if OS(SOLARIS)
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <procfs.h>
 #include <thread.h>
 #else
 #include <pthread.h>
@@ -331,6 +338,7 @@ typedef pthread_attr_t PlatformThreadReg
 #error Need a thread register struct for this platform
 #endif
 
+#if !OS(SOLARIS)
 static size_t getPlatformThreadRegisters(const PlatformThread& platformThread, PlatformThreadRegisters& regs)
 {
 #if OS(DARWIN)
@@ -372,7 +380,29 @@ static size_t getPlatformThreadRegisters
 #if HAVE(PTHREAD_NP_H) || OS(NETBSD)
     // e.g. on FreeBSD 5.4, neundorf@kde.org
     pthread_attr_get_np(platformThread, &regs);
+#elif OS(HAIKU)
+///!!!
 #else
+/*#if OS(HAIKU)
+pthread_getattr_np(pthread_t _thread, pthread_attr_t *_attr)
+{
+    pthread_thread *thread = (pthread_thread *)_thread;
+    pthread_attr *attr;
+
+    if (thread == NULL || _attr == NULL)
+        return B_BAD_VALUE;
+
+    attr = (pthread_attr *)malloc(sizeof(pthread_attr));
+    if (attr == NULL)
+        return B_NO_MEMORY;
+
+    memcpy(_attr, &thread->attr, sizeof(pthread_attr_t));
+
+    *_attr = attr;
+
+    return B_OK;
+}
+#endif*/
     // FIXME: this function is non-portable; other POSIX systems may have different np alternatives
     pthread_getattr_np(platformThread, &regs);
 #endif
@@ -381,6 +411,7 @@ static size_t getPlatformThreadRegisters
 #error Need a way to get thread registers on this platform
 #endif
 }
+#endif
 
 static inline void* otherThreadStackPointer(const PlatformThreadRegisters& regs)
 {
@@ -419,6 +450,10 @@ static inline void* otherThreadStackPoin
     return reinterpret_cast<void*>((uintptr_t) regs.Esp);
 #elif CPU(X86_64) && OS(WINDOWS)
     return reinterpret_cast<void*>((uintptr_t) regs.Rsp);
+#elif OS(HAIKU)
+    thread_info info;
+	get_thread_info(0, &info);
+	return info.stack_end;
 #elif USE(PTHREADS)
     void* stackBase = 0;
     size_t stackSize = 0;
@@ -431,6 +466,7 @@ static inline void* otherThreadStackPoin
 #endif
 }
 
+#if !OS(SOLARIS)
 static void freePlatformThreadRegisters(PlatformThreadRegisters& regs)
 {
 #if USE(PTHREADS) && !OS(WINDOWS) && !OS(DARWIN)
@@ -439,24 +475,40 @@ static void freePlatformThreadRegisters(
     UNUSED_PARAM(regs);
 #endif
 }
+#endif
 
 void MachineThreads::gatherFromOtherThread(ConservativeRoots& conservativeRoots, Thread* thread)
 {
     suspendThread(thread->platformThread);
 
+#if OS(SOLARIS)
+    struct lwpstatus lwp;
+    char procfile[64];
+    int fd;
+    snprintf(procfile, 64, "/proc/self/lwp/%u/lwpstatus", thread->platformThread);
+    fd = open(procfile, O_RDONLY, 0);
+    if (fd == -1) {
+        fprintf(stderr, "%s: %s\n", procfile, strerror(errno));
+        abort();
+    }	
+    pread(fd, &lwp, sizeof(lwp), 0);
+    close(fd);
+    void* stackPointer = (void*)lwp.pr_reg[REG_SP];
+#else
     PlatformThreadRegisters regs;
     size_t regSize = getPlatformThreadRegisters(thread->platformThread, regs);
 
     conservativeRoots.add(static_cast<void*>(&regs), static_cast<void*>(reinterpret_cast<char*>(&regs) + regSize));
 
     void* stackPointer = otherThreadStackPointer(regs);
+
+    freePlatformThreadRegisters(regs);
+#endif
     void* stackBase = thread->stackBase;
     swapIfBackwards(stackPointer, stackBase);
     conservativeRoots.add(stackPointer, stackBase);
 
     resumeThread(thread->platformThread);
-
-    freePlatformThreadRegisters(regs);
 }
 
 #endif
