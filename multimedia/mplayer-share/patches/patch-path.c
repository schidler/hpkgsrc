$NetBSD$

--- path.c.orig	2010-03-23 18:01:00.034865152 +0000
+++ path.c
@@ -49,7 +49,9 @@ char *get_path(const char *filename){
 	char *buff;
 #ifdef __MINGW32__
 	static char *config_dir = "/mplayer";
-#else
+#elif defined __HAIKU__
+	static char *config_dir = "/config/settings/mplayer";
+#else 
 	static char *config_dir = "/.mplayer";
 #endif
 	int len;
