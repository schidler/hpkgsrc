$NetBSD$

--- qmake/option.cpp.orig	2012-09-11 01:36:36.038797312 +0000
+++ qmake/option.cpp
@@ -263,6 +263,11 @@ Option::parseCommandLine(int argc, char 
                 Option::host_mode = HOST_WIN_MODE;
                 Option::target_mode = TARG_WIN_MODE;
                 Option::target_mode_overridden = true;
+			} else if(opt == "haiku") {
+                fprintf(stderr, "-haiku is deprecated.\n");
+                Option::host_mode = HOST_HAIKU_MODE;
+                Option::target_mode = TARG_HAIKU_MODE;
+                Option::target_mode_overridden = true;
             } else if(opt == "integrity") {
                 Option::target_mode = TARG_INTEGRITY_MODE;
             } else if(opt == "d") {
@@ -544,6 +549,9 @@ Option::init(int argc, char **argv)
 #elif defined(Q_OS_UNIX)
         Option::host_mode = Option::HOST_UNIX_MODE;
         Option::target_mode = Option::TARG_UNIX_MODE;
+#elif defined(Q_OS_HAIKU)
+        Option::host_mode = Option::HOST_HAIKU_MODE;
+        Option::target_mode = Option::TARG_HAIKU_MODE;
 #else
         Option::host_mode = Option::HOST_WIN_MODE;
         Option::target_mode = Option::TARG_WIN_MODE;
