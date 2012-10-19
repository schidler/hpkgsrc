$NetBSD$

--- qmake/option.h.orig	2012-09-11 01:36:36.038797312 +0000
+++ qmake/option.h
@@ -162,10 +162,10 @@ struct Option
     enum QMAKE_RECURSIVE { QMAKE_RECURSIVE_DEFAULT, QMAKE_RECURSIVE_YES, QMAKE_RECURSIVE_NO };
     static QMAKE_RECURSIVE recursive;
     static QStringList before_user_vars, after_user_vars, user_configs, after_user_configs;
-    enum HOST_MODE { HOST_UNKNOWN_MODE, HOST_UNIX_MODE, HOST_WIN_MODE, HOST_MACX_MODE };
+    enum HOST_MODE { HOST_UNKNOWN_MODE, HOST_UNIX_MODE, HOST_WIN_MODE, HOST_MACX_MODE, HOST_HAIKU_MODE };
     static HOST_MODE host_mode;
     enum TARG_MODE { TARG_UNKNOWN_MODE, TARG_UNIX_MODE, TARG_WIN_MODE, TARG_MACX_MODE,
-                     TARG_SYMBIAN_MODE, TARG_INTEGRITY_MODE };
+                     TARG_SYMBIAN_MODE, TARG_INTEGRITY_MODE, TARG_HAIKU_MODE };
     static TARG_MODE target_mode;
     static bool target_mode_overridden;
     static QString user_template, user_template_prefix;
