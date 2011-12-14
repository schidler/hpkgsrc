$NetBSD$

--- gio/gdbusauthmechanismsha1.c.orig	2011-06-05 23:18:49.042991616 +0000
+++ gio/gdbusauthmechanismsha1.c
@@ -256,7 +256,7 @@ ensure_keyring_directory (GError **error
     {
       if (g_getenv ("G_DBUS_COOKIE_SHA1_KEYRING_DIR_IGNORE_PERMISSION") == NULL)
         {
-#ifdef G_OS_UNIX
+#if defined(G_OS_UNIX) || defined(G_OS_HAIKU)
           struct stat statbuf;
           if (stat (path, &statbuf) != 0)
             {
@@ -945,7 +945,7 @@ mechanism_server_initiate (GDBusAuthMech
 
   if (initial_response != NULL && strlen (initial_response) > 0)
     {
-#ifdef G_OS_UNIX
+#if defined(G_OS_UNIX) || defined(G_OS_HAIKU)
       gint64 uid;
       gchar *endp;
 
@@ -1112,7 +1112,7 @@ mechanism_client_initiate (GDBusAuthMech
 
   *out_initial_response_len = -1;
 
-#ifdef G_OS_UNIX
+#if defined(G_OS_UNIX) || defined(G_OS_HAIKU)
   initial_response = g_strdup_printf ("%" G_GINT64_FORMAT, (gint64) getuid ());
 #elif defined (G_OS_WIN32)
 initial_response = _g_dbus_win32_get_user_sid ();
