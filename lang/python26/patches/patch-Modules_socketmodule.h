$NetBSD$

--- Modules/socketmodule.h.orig	2010-05-09 15:15:40.043778048 +0000
+++ Modules/socketmodule.h
@@ -47,6 +47,10 @@ typedef int socklen_t;
 #  undef AF_NETLINK
 #endif
 
+#if defined(__HAIKU__)
+#undef HAVE_BLUETOOTH_BLUETOOTH_H
+#endif
+
 #ifdef HAVE_BLUETOOTH_BLUETOOTH_H
 #include <bluetooth/bluetooth.h>
 #include <bluetooth/rfcomm.h>
