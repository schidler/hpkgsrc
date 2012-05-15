$NetBSD$

--- libsmb/libsmb_context.c.orig	2012-01-29 19:40:43.025427968 +0000
+++ libsmb/libsmb_context.c
@@ -57,7 +57,12 @@ SMBC_module_init(void * punused)
     home = getenv("HOME");
     if (home) {
         char *conf = NULL;
-        if (asprintf(&conf, "%s/.smb/smb.conf", home) > 0) {
+	#ifdef __HAIKU__
+		if (asprintf(&conf, "%s/config/settings/smb/smb.conf", home) > 0)
+	#else
+		if (asprintf(&conf, "%s/.smb/smb.conf", home) > 0)
+	#endif
+		 {
             if (lp_load(conf, True, False, False, True)) {
                 conf_loaded = True;
             } else {
