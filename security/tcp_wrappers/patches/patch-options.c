$NetBSD$

--- options.c.orig	2011-11-26 21:12:19.507772928 +0000
+++ options.c
@@ -117,7 +117,9 @@ static struct option option_table[] = {
     "twist", twist_option, NEED_ARG | EXPAND_ARG | USE_LAST,
     "rfc931", rfc931_option, OPT_ARG,
     "setenv", setenv_option, NEED_ARG | EXPAND_ARG,
-    "nice", nice_option, OPT_ARG,
+    #ifndef __HAIKU__
+	"nice", nice_option, OPT_ARG,
+	#endif
     "severity", severity_option, NEED_ARG,
     "allow", allow_option, USE_LAST,
     "deny", deny_option, USE_LAST,
@@ -360,8 +362,10 @@ struct request_info *request;
 
     if (value != 0 && sscanf(value, "%d%c", &niceval, &junk) != 1)
 	tcpd_jump("bad nice value: \"%s\"", value);
-    if (dry_run == 0 && nice(niceval) < 0)
+    #ifndef __HAIKU__
+	if (dry_run == 0 && nice(niceval) < 0)
 	tcpd_warn("nice(%d): %m", niceval);
+	#endif
 }
 
 /* twist_option - replace process by shell command */
