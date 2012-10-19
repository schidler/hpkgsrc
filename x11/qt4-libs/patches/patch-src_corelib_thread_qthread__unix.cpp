$NetBSD$

--- src/corelib/thread/qthread_unix.cpp.orig	2012-09-11 01:36:50.062914560 +0000
+++ src/corelib/thread/qthread_unix.cpp
@@ -641,11 +641,12 @@ void QThread::start(Priority priority)
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
