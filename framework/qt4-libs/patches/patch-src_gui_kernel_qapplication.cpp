$NetBSD$

--- src/gui/kernel/qapplication.cpp.orig	2011-12-08 05:06:02.014942208 +0000
+++ src/gui/kernel/qapplication.cpp
@@ -4848,7 +4848,7 @@ bool QApplicationPrivate::notify_helper(
   Stubbed session management support
  *****************************************************************************/
 #ifndef QT_NO_SESSIONMANAGER
-#if defined(Q_WS_WIN) || defined(Q_WS_MAC) || defined(Q_WS_QWS)
+#if defined(Q_WS_WIN) || defined(Q_WS_MAC) || defined(Q_WS_QWS) || defined(Q_WS_HAIKU)
 
 #if defined(Q_OS_WINCE)
 HRESULT qt_CoCreateGuid(GUID* guid)
