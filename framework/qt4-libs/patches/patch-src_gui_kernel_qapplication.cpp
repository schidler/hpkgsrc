$NetBSD$

--- src/gui/kernel/qapplication.cpp.orig	2012-03-14 14:01:16.056885248 +0000
+++ src/gui/kernel/qapplication.cpp
@@ -4852,7 +4852,7 @@ bool QApplicationPrivate::notify_helper(
   Stubbed session management support
  *****************************************************************************/
 #ifndef QT_NO_SESSIONMANAGER
-#if defined(Q_WS_WIN) || defined(Q_WS_MAC) || defined(Q_WS_QWS)
+#if defined(Q_WS_WIN) || defined(Q_WS_MAC) || defined(Q_WS_QWS) || defined(Q_WS_HAIKU)
 
 #if defined(Q_OS_WINCE)
 HRESULT qt_CoCreateGuid(GUID* guid)
