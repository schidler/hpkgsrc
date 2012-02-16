$NetBSD$

--- Source/cmFindPackageCommand.cxx.orig	2011-10-04 16:09:25.060817408 +0000
+++ Source/cmFindPackageCommand.cxx
@@ -19,7 +19,9 @@
 #endif
 
 #if defined(__HAIKU__)
-#include <StorageKit.h>
+#include <string.h>
+#include <FindDirectory.h>
+#include <StorageDefs.h>
 #endif
 
 void cmFindPackageNeedBackwardsCompatibility(const std::string& variable,
@@ -1317,12 +1319,13 @@ void cmFindPackageCommand::AddPrefixesUs
 #if defined(_WIN32) && !defined(__CYGWIN__)
   this->LoadPackageRegistryWinUser();
 #elif defined(__HAIKU__)
-  BPath dir;
-  if (find_directory(B_USER_SETTINGS_DIRECTORY, &dir) == B_OK)
+  char dir[B_PATH_NAME_LENGTH];
+  if (find_directory(B_USER_SETTINGS_DIRECTORY, -1, false, dir, sizeof(dir)) ==
+      B_OK)
     {
-    dir.Append("cmake/packages");
-    dir.Append(this->Name.c_str());
-    this->LoadPackageRegistryDir(dir.Path());
+    strlcat(dir, "/cmake/packages/", sizeof(dir));
+    strlcat(dir, this->Name.c_str(), sizeof(dir));
+    this->LoadPackageRegistryDir(dir);
     }
 #else
   if(const char* home = cmSystemTools::GetEnv("HOME"))
