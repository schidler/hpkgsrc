$NetBSD$

--- qmake/project.cpp.orig	2012-04-26 19:45:52.006553600 +0000
+++ qmake/project.cpp
@@ -546,6 +546,10 @@ QStringList qmake_feature_paths(QMakePro
         case Option::TARG_UNIX_MODE:
             concat << base_concat + QDir::separator() + "unix";
             break;
+        case Option::TARG_HAIKU_MODE:
+            concat << base_concat + QDir::separator() + "haiku";
+            concat << base_concat + QDir::separator() + "unix";
+            break;
         case Option::TARG_WIN_MODE:
             concat << base_concat + QDir::separator() + "win32";
             break;
@@ -1510,6 +1514,8 @@ void QMakeProject::validateModes()
                     const QString &os = tgt.first();
                     if (os == "unix")
                         Option::target_mode = Option::TARG_UNIX_MODE;
+                    else if (os == "haiku")
+                        Option::target_mode = Option::TARG_HAIKU_MODE;
                     else if (os == "macx")
                         Option::target_mode = Option::TARG_MACX_MODE;
                     else if (os == "symbian")
@@ -1543,7 +1549,8 @@ QMakeProject::isActiveConfig(const QStri
         validateModes();
         return Option::target_mode == Option::TARG_UNIX_MODE
                || Option::target_mode == Option::TARG_MACX_MODE
-               || Option::target_mode == Option::TARG_SYMBIAN_MODE;
+               || Option::target_mode == Option::TARG_SYMBIAN_MODE
+               || Option::target_mode == Option::TARG_HAIKU_MODE;
     } else if (x == "macx" || x == "mac") {
         validateModes();
         return Option::target_mode == Option::TARG_MACX_MODE;
@@ -1553,7 +1560,12 @@ QMakeProject::isActiveConfig(const QStri
     } else if (x == "win32") {
         validateModes();
         return Option::target_mode == Option::TARG_WIN_MODE;
+    } else if (x == "haiku") {
+        validateModes();
+        return Option::target_mode == Option::TARG_HAIKU_MODE;
     }
+    if(x == "compile_libtool" && (vars["TEMPLATE"].first() == "app" || vars["TEMPLATE"].first() == "lib"))
+         return true;
 
     //mkspecs
     static QString spec;
