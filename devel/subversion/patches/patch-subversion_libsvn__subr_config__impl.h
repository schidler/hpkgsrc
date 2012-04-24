$NetBSD$

--- subversion/libsvn_subr/config_impl.h.orig	2009-01-27 13:23:50.000000000 +0000
+++ subversion/libsvn_subr/config_impl.h
@@ -111,7 +111,11 @@ svn_error_t *svn_config__parse_registry(
 #  define SVN_CONFIG__SUBDIRECTORY    "Subversion"
 #else  /* ! WIN32 */
 #  define SVN_CONFIG__SYS_DIRECTORY   "/etc/subversion"
+#ifdef __HAIKU__
+#  define SVN_CONFIG__USR_DIRECTORY   "config/settings/subversion"
+#else
 #  define SVN_CONFIG__USR_DIRECTORY   ".subversion"
+#endif
 #endif /* WIN32 */
 
 /* The description/instructions file in the config directory. */
