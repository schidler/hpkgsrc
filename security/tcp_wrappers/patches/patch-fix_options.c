$NetBSD$

Fix C error

--- fix_options.c.orig	1997-04-08 00:29:19.001835008 +0000
+++ fix_options.c
@@ -29,7 +29,7 @@ static char sccsid[] = "@(#) fix_options
 
 /* fix_options - get rid of IP-level socket options */
 
-fix_options(request)
+void fix_options(request)
 struct request_info *request;
 {
 #ifdef IP_OPTIONS
