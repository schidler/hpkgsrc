$NetBSD: patch-qmake_generators_makefile.cpp,v 1.2 2012/04/09 09:12:49 adam Exp $

--- qmake/generators/makefile.cpp.orig	2012-03-14 14:01:12.057671680 +0000
+++ qmake/generators/makefile.cpp
@@ -2208,6 +2208,8 @@ QString MakefileGenerator::buildArgs(con
             ret += " -unix";
         else if (Option::target_mode == Option::TARG_WIN_MODE)
             ret += " -win32";
+        else if(Option::target_mode == Option::TARG_HAIKU_MODE)
+            ret += " -haiku";
     }
 
     //configs
@@ -3256,7 +3258,7 @@ MakefileGenerator::writePkgConfigFile()
             bundle = bundle.left(suffix);
         pkgConfiglibName = "-framework " + bundle + " ";
     } else {
-        pkgConfiglibDir = "-L${libdir}";
+        pkgConfiglibDir = "-Wl,-R${libdir} -L${libdir}";
         pkgConfiglibName = "-l" + lname.left(lname.length()-Option::libtool_ext.length());
         pkgConfiglibName += project->first("TARGET_VERSION_EXT");
     }
