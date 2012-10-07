$NetBSD$

--- hotkeywrapper.hh.orig	2010-12-03 21:12:46.012582912 +0000
+++ hotkeywrapper.hh
@@ -2,7 +2,7 @@
 #define HOTKEYWRAPPER_H
 
 #include <QtGui>
-
+#include <set>
 #ifdef Q_WS_X11
 
 #include <set>
@@ -79,24 +79,27 @@ private:
   virtual bool winEvent ( MSG * message, long * result );
   HWND hwnd;
 #else
+#ifndef Q_OS_HAIKU
 
   static void recordEventCallback( XPointer, XRecordInterceptData * );
 
   /// Called by recordEventCallback()
   void handleRecordEvent( XRecordInterceptData * );
 
+
   void run(); // QThread
 
   // We do one-time init of those, translating keysyms to keycodes
   KeyCode lShiftCode, rShiftCode, lCtrlCode, rCtrlCode, lAltCode, rAltCode,
           cCode, insertCode, kpInsertCode;
-
+#endif
   quint32 currentModifiers;
-
+#ifndef Q_OS_HAIKU
   Display * dataDisplay;
   XRecordRange * recordRange;
   XRecordContext recordContext;
   XRecordClientSpec recordClientSpec;
+  #endif
 
   /// Holds all the keys currently grabbed.
   /// The first value is keycode, the second is modifiers
