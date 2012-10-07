$NetBSD$

--- keyboardstate.cc.orig	2010-12-03 21:12:46.018612224 +0000
+++ keyboardstate.cc
@@ -7,10 +7,12 @@
 #ifdef Q_OS_WIN32
 #include <windows.h>
 #else
+#ifndef Q_OS_HAIKU
 #include <QX11Info>
 #include <X11/X.h>
 #include <X11/XKBlib.h>
 #endif
+#endif
 
 bool KeyboardState::checkModifiersPressed( int mask )
 {
@@ -28,6 +30,7 @@ bool KeyboardState::checkModifiersPresse
     ( mask & RightShift && !( GetAsyncKeyState( VK_RSHIFT ) & 0x8000 ) ) );
 
   #else
+  #ifndef Q_OS_HAIKU
   XkbStateRec state;
 
   XkbGetState( QX11Info::display(), XkbUseCoreKbd, &state );
@@ -38,5 +41,14 @@ bool KeyboardState::checkModifiersPresse
     ( mask & Shift && !( state.base_mods & ShiftMask ) ) ||
     ( mask & Win && !( state.base_mods & Mod4Mask ) ) );
   #endif
+//neeeewwwww  
+/*  uint32 mask = modifiers();
+return !(
+( mask & B_COMMAND_KEY && !( state.base_mods & Mod1Mask ) ) ||
+( mask & B_CONTROL_KEY && !( state.base_mods & ControlMask ) ) ||
+( mask & B_SHIFT_KEY && !( state.base_mods & ShiftMask ) ) ||
+( mask & B_OPTION_KEY && !( state.base_mods & Mod4Mask ) ) );*/
+
+  #endif
 }
 
