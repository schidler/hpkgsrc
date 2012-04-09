$NetBSD: patch-qmake_generators_makefile.cpp,v 1.1 2012/01/12 22:59:58 adam Exp $

--- qmake/generators/makefile.cpp.orig	2011-12-08 05:06:02.031195136 +0000
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
     }
     t << pkgConfiglibDir << " " << pkgConfiglibName << " " << endl;
