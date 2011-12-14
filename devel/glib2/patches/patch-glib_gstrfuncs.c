$NetBSD$

--- glib/gstrfuncs.c.orig	2011-06-05 23:18:49.037748736 +0000
+++ glib/gstrfuncs.c
@@ -1423,12 +1423,12 @@ g_strsignal (gint signum)
 #ifdef HAVE_STRSIGNAL
   const char *msg_locale;
 
-#if defined(G_OS_BEOS) || defined(G_WITH_CYGWIN)
+#if defined(__HAIKU__) || defined(G_WITH_CYGWIN)
 extern const char *strsignal(int);
 #else
   /* this is declared differently (const) in string.h on BeOS */
   extern char *strsignal (int sig);
-#endif /* !G_OS_BEOS && !G_WITH_CYGWIN */
+#endif /* !G_OS_HAIKU && !G_WITH_CYGWIN */
   msg_locale = strsignal (signum);
   if (g_get_charset (NULL))
     return msg_locale;
