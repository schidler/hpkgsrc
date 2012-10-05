$NetBSD$

--- src/lib/app/mainapplication.cpp.orig	2012-10-05 19:35:02.853016576 +0000
+++ src/lib/app/mainapplication.cpp
@@ -94,7 +94,7 @@ MainApplication::MainApplication(int &ar
     , m_startingAfterCrash(false)
     , m_databaseConnected(false)
 {
-#if defined(Q_WS_X11) && !defined(NO_SYSTEM_DATAPATH)
+#if defined(Q_WS_X11) || defined(Q_WS_HAIKU) && !defined(NO_SYSTEM_DATAPATH)
     DATADIR = USE_DATADIR;
 #else
     DATADIR = qApp->applicationDirPath() + "/";
