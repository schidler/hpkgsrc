$NetBSD$

--- unproto/tok_io.c.orig	2012-04-27 20:58:44.000000000 +0000
+++ unproto/tok_io.c
@@ -189,7 +189,7 @@ static char *ignore_directives[] = {
 
 /* do_control - parse control line */
 
-static int do_control()
+static void do_control(void)
 {
     struct token *t;
     int     line;
