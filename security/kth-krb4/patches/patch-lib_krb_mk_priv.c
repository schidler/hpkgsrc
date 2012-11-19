$NetBSD$

--- lib/krb/mk_priv.c.orig	2001-09-16 22:41:58.000000000 +0000
+++ lib/krb/mk_priv.c
@@ -78,7 +78,12 @@ RCSID("$Id: mk_priv.c,v 1.25 2001/09/16
 
 int32_t
 krb_mk_priv(void *in, void *out, u_int32_t length, 
-	    struct des_ks_struct *schedule, des_cblock *key, 
+#if defined(__DragonFly__) || defined (__FreeBSD__)
+	    des_key_schedule schedule,
+#else
+	    struct des_ks_struct *schedule,
+#endif
+	    des_cblock *key, 
 	    struct sockaddr_in *sender, struct sockaddr_in *receiver)
 {
     unsigned char *p = (unsigned char*)out;
