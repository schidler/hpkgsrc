$NetBSD$

--- src/3rdparty/webkit/Source/JavaScriptCore/heap/MachineStackMarker.cpp.orig	2012-09-11 01:36:45.025952256 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/heap/MachineStackMarker.cpp
@@ -20,6 +20,9 @@
  */
 
 #include "config.h"
+#if OS(SOLARIS)
+#undef _FILE_OFFSET_BITS
+#endif
 #include "MachineStackMarker.h"
 
 #include "ConservativeRoots.h"
@@ -64,6 +67,10 @@
 #include <unistd.h>
 
 #if OS(SOLARIS)
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <procfs.h>
 #include <thread.h>
 #else
 #include <pthread.h>
@@ -341,6 +348,7 @@ typedef pthread_attr_t PlatformThreadReg
 #error Need a thread register struct for this platform
 #endif
 
+#if !OS(SOLARIS)
 static size_t getPlatformThreadRegisters(const PlatformThread& platformThread, PlatformThreadRegisters& regs)
 {
 #if OS(DARWIN)
@@ -382,6 +390,8 @@ static size_t getPlatformThreadRegisters
 #if HAVE(PTHREAD_NP_H) || OS(NETBSD)
     // e.g. on FreeBSD 5.4, neundorf@kde.org
     pthread_attr_get_np(platformThread, &regs);
+#elif OS(HAIKU)
+       //!!!!!
 #else
     // FIXME: this function is non-portable; other POSIX systems may have different np alternatives
     pthread_getattr_np(platformThread, &regs);
@@ -391,6 +401,7 @@ static size_t getPlatformThreadRegisters
 #error Need a way to get thread registers on this platform
 #endif
 }
+#endif
 
 static inline void* otherThreadStackPointer(const PlatformThreadRegisters& regs)
 {
@@ -429,6 +440,10 @@ static inline void* otherThreadStackPoin
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
@@ -441,6 +456,7 @@ static inline void* otherThreadStackPoin
 #endif
 }
 
+#if !OS(SOLARIS)
 static void freePlatformThreadRegisters(PlatformThreadRegisters& regs)
 {
 #if USE(PTHREADS) && !OS(WINDOWS) && !OS(DARWIN)
@@ -449,24 +465,40 @@ static void freePlatformThreadRegisters(
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
