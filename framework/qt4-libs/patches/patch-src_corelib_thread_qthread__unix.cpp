$NetBSD$

--- src/corelib/thread/qthread_unix.cpp.orig	2012-03-14 14:01:18.054263808 +0000
+++ src/corelib/thread/qthread_unix.cpp
@@ -601,11 +601,12 @@ void QThread::start(Priority priority)
     if (code == EPERM) {
         // caller does not have permission to set the scheduling
         // parameters/policy
+#ifndef Q_OS_HAIKU
         pthread_attr_setinheritsched(&attr, PTHREAD_INHERIT_SCHED);
+#endif
         code =
             pthread_create(&d->thread_id, &attr, QThreadPrivate::start, this);
     }
-
     pthread_attr_destroy(&attr);
 
     if (code) {
