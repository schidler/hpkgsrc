$NetBSD$

--- src/corelib/io/qfilesystemengine_unix.cpp.orig	2012-09-11 01:36:50.060293120 +0000
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
