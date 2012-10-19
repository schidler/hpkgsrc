$NetBSD$

--- src/corelib/thread/qthread_p.h.orig	2012-09-11 01:36:50.062652416 +0000
+++ src/corelib/thread/qthread_p.h
@@ -179,7 +179,7 @@ public:
     static void finish(void *, bool lockAnyway=true);
 #endif // Q_OS_WIN32
 
-#if defined(Q_OS_WIN32) || defined(Q_OS_WINCE) || defined (Q_OS_SYMBIAN)
+#if defined(Q_OS_WIN32) || defined(Q_OS_WINCE) || defined (Q_OS_SYMBIAN) || defined (Q_OS_HAIKU)
     bool terminationEnabled, terminatePending;
 # endif
     QThreadData *data;
