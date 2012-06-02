$NetBSD$

--- qmake/option.cpp.orig	2012-03-14 14:01:12.002359296 +0000
+++ qmake/option.cpp
@@ -263,6 +263,11 @@ Option::parseCommandLine(int argc, char 
                 Option::host_mode = HOST_WIN_MODE;
                 Option::target_mode = TARG_WIN_MODE;
                 Option::target_mode_overridden = true;
+            } else if(opt == "haiku") {
+                fprintf(stderr, "-haiku is deprecated.\n");
+                Option::host_mode = HOST_HAIKU_MODE;
+                Option::target_mode = TARG_HAIKU_MODE;
+                Option::target_mode_overridden = true;
             } else if(opt == "integrity") {
                 Option::target_mode = TARG_INTEGRITY_MODE;
             } else if(opt == "d") {
@@ -541,6 +546,9 @@ Option::init(int argc, char **argv)
 #if defined(Q_OS_MAC)
         Option::host_mode = Option::HOST_MACX_MODE;
         Option::target_mode = Option::TARG_MACX_MODE;
+#elif defined(Q_OS_HAIKU)
+        Option::host_mode = Option::HOST_HAIKU_MODE;
+        Option::target_mode = Option::TARG_HAIKU_MODE;
 #elif defined(Q_OS_UNIX)
         Option::host_mode = Option::HOST_UNIX_MODE;
         Option::target_mode = Option::TARG_UNIX_MODE;
