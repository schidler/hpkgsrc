$NetBSD$

--- src/corelib/io/qfilesystemengine_unix.cpp.orig	2011-12-08 05:06:03.020185088 +0000
+++ src/corelib/io/qfilesystemengine_unix.cpp
@@ -611,6 +611,9 @@ bool QFileSystemEngine::setPermissions(c
 QString QFileSystemEngine::homePath()
 {
     QString home = QFile::decodeName(qgetenv("HOME"));
+#ifdef Q_OS_HAIKU
+	home += QLatin1String("/config/settings/Qt");
+#endif
     if (home.isNull())
         home = rootPath();
     return QDir::cleanPath(home);
