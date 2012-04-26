$NetBSD$

--- scheduler/auth.c.orig	2012-04-25 10:43:27.937951232 +0000
+++ scheduler/auth.c
@@ -97,8 +97,9 @@ typedef struct ucred cupsd_ucred_t;
 extern void	krb5_ipc_client_set_target_uid(uid_t);
 extern void	krb5_ipc_client_clear_target(void);
 #endif /* HAVE_KRB5_IPC_CLIENT_SET_TARGET_UID */
-
-
+#ifdef __HAIKU__
+#define s6_addr32	s6_addr
+#endif
 /*
  * Local functions...
  */
