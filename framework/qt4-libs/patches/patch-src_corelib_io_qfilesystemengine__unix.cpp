$NetBSD$

--- src/corelib/io/qfilesystemengine_unix.cpp.orig	2012-03-14 14:01:18.019660800 +0000
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
