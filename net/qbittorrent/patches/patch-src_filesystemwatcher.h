$NetBSD$

--- src/filesystemwatcher.h.orig	2012-05-20 15:15:31.000000000 +0000
+++ src/filesystemwatcher.h
@@ -17,9 +17,11 @@
 #include <sys/mount.h>
 #include <string.h>
 #else
+#ifndef Q_WS_HAIKU
 #include <sys/vfs.h>
 #endif
 #endif
+#endif
 
 #include "fs_utils.h"
 
@@ -55,7 +57,7 @@ private:
   QHash<QString, int> m_partialTorrents;
   QPointer<QTimer> m_partialTorrentTimer;
 
-#ifndef Q_WS_WIN
+#if !defined Q_WS_WIN && !defined Q_WS_HAIKU
 private:
   static bool isNetworkFileSystem(QString path) {
     QString file = path;
@@ -144,7 +146,7 @@ public:
   }
 
   void addPath(const QString & path) {
-#ifndef Q_WS_WIN
+#if !defined Q_WS_WIN && !defined Q_WS_HAIKU
     QDir dir(path);
     if (!dir.exists())
       return;
@@ -166,7 +168,7 @@ public:
       qDebug("FS Watching is watching %s in normal mode", qPrintable(path));
       QFileSystemWatcher::addPath(path);
       scanLocalFolder(path);
-#ifndef Q_WS_WIN
+#if !defined Q_WS_WIN && !defined Q_WS_HAIKU
     }
 #endif
   }
