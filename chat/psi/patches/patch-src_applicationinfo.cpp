$NetBSD$

--- src/applicationinfo.cpp.orig	2012-10-04 00:53:03.000000000 +0000
+++ src/applicationinfo.cpp
@@ -134,7 +134,7 @@ QString ApplicationInfo::getCertificateS
 
 QString ApplicationInfo::resourcesDir()
 {
-#if defined(Q_WS_X11)
+#if defined(Q_WS_X11) || defined(Q_WS_HAIKU)
 	return PSI_DATADIR;
 #elif defined(Q_WS_WIN)
 	return qApp->applicationDirPath();
@@ -227,6 +227,10 @@ QString ApplicationInfo::homeDir(Applica
 			QDir configDir(QDir::homePath() + "/Library/Application Support/" + name());
 			QDir cacheDir(QDir::homePath() + "/Library/Caches/" + name());
 			QDir dataDir(configDir);
+#elif defined Q_WS_HAIKU
+			QDir configDir(QDir::homePath() + "/.psi");
+			QDir cacheDir(configDir);
+			QDir dataDir(configDir);
 #elif defined Q_WS_X11
 			QString XdgConfigHome = QString::fromLocal8Bit(getenv("XDG_CONFIG_HOME"));
 			QString XdgDataHome = QString::fromLocal8Bit(getenv("XDG_DATA_HOME"));
