$NetBSD$

--- src/qca_tools.cpp.orig	2008-05-16 20:41:50.000000000 +0000
+++ src/qca_tools.cpp
@@ -33,7 +33,7 @@ namespace QCA {
 
 static bool can_lock()
 {
-#ifdef Q_OS_UNIX
+#if defined(Q_OS_UNIX) && !defined(Q_OS_HAIKU)
 	bool ok = false;
 #ifdef MLOCK_NOT_VOID_PTR
 # define MLOCK_TYPE char *
