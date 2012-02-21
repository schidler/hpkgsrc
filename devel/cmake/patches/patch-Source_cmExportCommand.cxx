$NetBSD$

--- Source/cmExportCommand.cxx.orig	2011-10-04 16:09:24.025427968 +0000
+++ Source/cmExportCommand.cxx
@@ -20,7 +20,8 @@
 #include "cmExportBuildFileGenerator.h"
 
 #if defined(__HAIKU__)
-#include <StorageKit.h>
+#include <FindDirectory.h>
+#include <StorageDefs.h>
 #endif
 
 cmExportCommand::cmExportCommand()
@@ -297,14 +298,15 @@ void cmExportCommand::StorePackageRegist
                                               const char* hash)
 {
 #if defined(__HAIKU__)
-  BPath dir;
-  if (find_directory(B_USER_SETTINGS_DIRECTORY, &dir) != B_OK)
+  char dir[B_PATH_NAME_LENGTH];
+  if (find_directory(B_USER_SETTINGS_DIRECTORY, -1, false, dir, sizeof(dir)) !=
+      B_OK)
     {
     return;
     }
-  dir.Append("cmake/packages");
-  dir.Append(package.c_str());
-  std::string fname = dir.Path();
+  std::string fname = dir;
+  fname += "/cmake/packages/";
+  fname += package;
 #else
   const char* home = cmSystemTools::GetEnv("HOME");
   if(!home)
