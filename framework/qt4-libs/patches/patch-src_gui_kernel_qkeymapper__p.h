$NetBSD$

--- src/gui/kernel/qkeymapper_p.h.orig	2011-12-08 05:06:02.006815744 +0000
+++ src/gui/kernel/qkeymapper_p.h
@@ -216,6 +216,10 @@ public:
     int mapS60RemConIdToS60Key(int s60RemConId);
     int mapS60RemConIdToS60ScanCodes(int s60RemConId);
     void updateInputLanguage();
+#elif defined(Q_WS_HAIKU)
+    uint32	translateKeyCode(int32 key);
+    uint32  ScanCodes[256];
+    uint32  ScanCodes_Numlock[16];
 #endif
 };
 
