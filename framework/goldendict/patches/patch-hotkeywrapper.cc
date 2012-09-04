$NetBSD$

--- hotkeywrapper.cc.orig	2010-12-03 21:12:46.003145728 +0000
+++ hotkeywrapper.cc
@@ -81,7 +81,7 @@ void HotkeyWrapper::waitKey2()
 {
   state2 = false;
 
-#ifdef Q_WS_X11
+#if defined (Q_WS_X11) || defined (Q_WS_HAIKU)
 
   if ( keyToUngrab != grabbedKeys.end() )
   {
@@ -310,6 +310,84 @@ bool QHotkeyApplication::winEventFilter 
 
 //////////////////////////////////////////////////////////////////////////
 
+#elif defined Q_OS_HAIKU
+ 
+void HotkeyWrapper::init()
+{
+  keyToUngrab = grabbedKeys.end();
+
+ // lShiftCode = XKeysymToKeycode( display, XK_Shift_L );
+ // rShiftCode = XKeysymToKeycode( display, XK_Shift_R );
+
+ // lCtrlCode = XKeysymToKeycode( display, XK_Control_L );
+ // rCtrlCode = XKeysymToKeycode( display, XK_Control_R );
+
+ // lAltCode = XKeysymToKeycode( display, XK_Alt_L );
+//  rAltCode = XKeysymToKeycode( display, XK_Alt_R );
+
+ // cCode = XKeysymToKeycode( display, XK_c );
+ // insertCode = XKeysymToKeycode( display, XK_Insert );
+ // kpInsertCode = XKeysymToKeycode( display, XK_KP_Insert );
+
+  currentModifiers = 0;
+
+  // This one will be used to read the recorded content
+ // dataDisplay = XOpenDisplay( 0 );
+
+ // recordRange->device_events.first = KeyPress;
+ // recordRange->device_events.last = KeyRelease;
+ 
+  connect( this, SIGNAL( keyRecorded( quint32, quint32 ) ),
+           this, SLOT( checkState( quint32, quint32 ) ),
+           Qt::QueuedConnection );
+
+  start();
+}
+
+
+/*void HotkeyWrapper::run()
+{ 
+return true;
+}*/
+
+bool HotkeyWrapper::setGlobalKey( int key, int key2,
+                                  Qt::KeyboardModifiers modifier, int handle )
+{
+  if ( !key )
+    return false; // We don't monitor empty combinations
+
+/*  int vk = nativeKey( key );
+  int vk2 = key2 ? nativeKey( key2 ) : 0;
+
+  quint32 mod = 0;
+  if (modifier & Qt::ShiftModifier)
+      mod |= ShiftMask;
+  if (modifier & Qt::ControlModifier)
+      mod |= ControlMask;
+  if (modifier & Qt::AltModifier)
+      mod |= Mod1Mask;
+
+  hotkeys.append( HotkeyStruct( vk, vk2, mod, handle, 0 ) );*/
+
+//  if ( !isCopyToClipboardKey( vk, mod ) )
+//    grabKey( vk, mod ); // Make sure it doesn't get caught by other apps
+
+//  return true;
+}
+
+void HotkeyWrapper::ungrabKey( GrabbedKeys::iterator i )
+{
+  grabbedKeys.erase( i );
+}
+void HotkeyWrapper::unregister()
+{
+   while( grabbedKeys.size() )
+    ungrabKey( grabbedKeys.begin() );
+
+  (static_cast<QHotkeyApplication*>(qApp))->unregisterWrapper(this);
+}
+ 
+ //////////////////////////////////////////////////////////////////////////
 #else
 
 //////////////////////////////////////////////////////////////////////////
