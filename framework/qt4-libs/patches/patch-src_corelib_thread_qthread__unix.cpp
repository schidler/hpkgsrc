$NetBSD$

--- src/corelib/thread/qthread_unix.cpp.orig	2011-12-08 05:06:03.065273856 +0000
+++ src/corelib/thread/qthread_unix.cpp
@@ -598,6 +598,7 @@ void QThread::start(Priority priority)
 
     int code =
         pthread_create(&d->thread_id, &attr, QThreadPrivate::start, this);
+#ifndef Q_OS_HAIKU
     if (code == EPERM) {
         // caller does not have permission to set the scheduling
         // parameters/policy
@@ -605,7 +606,7 @@ void QThread::start(Priority priority)
         code =
             pthread_create(&d->thread_id, &attr, QThreadPrivate::start, this);
     }
-
+#endif
     pthread_attr_destroy(&attr);
 
     if (code) {
