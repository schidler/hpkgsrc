$NetBSD$

--- src/corelib/io/qprocess_unix.cpp.orig	2012-03-14 14:01:18.041156608 +0000
+++ src/corelib/io/qprocess_unix.cpp
@@ -903,8 +903,12 @@ qint64 QProcessPrivate::bytesAvailableFr
 {
     int nbytes = 0;
     qint64 available = 0;
+#ifdef  Q_OS_HAIKU
+	available = 1024;
+#else
     if (::ioctl(stdoutChannel.pipe[0], FIONREAD, (char *) &nbytes) >= 0)
         available = (qint64) nbytes;
+#endif        
 #if defined (QPROCESS_DEBUG)
     qDebug("QProcessPrivate::bytesAvailableFromStdout() == %lld", available);
 #endif
@@ -915,8 +919,12 @@ qint64 QProcessPrivate::bytesAvailableFr
 {
     int nbytes = 0;
     qint64 available = 0;
+#ifdef Q_OS_HAIKU
+	available = 1024;
+#else
     if (::ioctl(stderrChannel.pipe[0], FIONREAD, (char *) &nbytes) >= 0)
         available = (qint64) nbytes;
+#endif
 #if defined (QPROCESS_DEBUG)
     qDebug("QProcessPrivate::bytesAvailableFromStderr() == %lld", available);
 #endif
