$NetBSD$

--- Modules/socketmodule.c.orig	2012-04-09 23:07:34.018874368 +0000
+++ Modules/socketmodule.c
@@ -4778,7 +4778,9 @@ init_socket(void)
 #ifndef __BEOS__
 /* We have incomplete socket support. */
     PyModule_AddIntConstant(m, "SOCK_RAW", SOCK_RAW);
+#ifndef __HAIKU__
     PyModule_AddIntConstant(m, "SOCK_SEQPACKET", SOCK_SEQPACKET);
+#endif
 #if defined(SOCK_RDM)
     PyModule_AddIntConstant(m, "SOCK_RDM", SOCK_RDM);
 #endif
