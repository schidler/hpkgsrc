$NetBSD$

--- Source/CPack/cmCPackGenerator.cxx.orig	2011-10-04 16:09:25.064225280 +0000
+++ Source/CPack/cmCPackGenerator.cxx
@@ -27,7 +27,8 @@
 #include <algorithm>
 
 #if defined(__HAIKU__)
-#include <StorageKit.h>
+#include <FindDirectory.h>
+#include <StorageDefs.h>
 #endif
 
 //----------------------------------------------------------------------
@@ -1207,10 +1208,10 @@ const char* cmCPackGenerator::GetInstall
   this->InstallPath += "-";
   this->InstallPath += this->GetOption("CPACK_PACKAGE_VERSION");
 #elif defined(__HAIKU__)
-  BPath dir;
-  if (find_directory(B_COMMON_DIRECTORY, &dir) == B_OK)
+  char dir[B_PATH_NAME_LENGTH];
+  if (find_directory(B_COMMON_DIRECTORY, -1, false, dir, sizeof(dir)) == B_OK)
     {
-    this->InstallPath = dir.Path();
+    this->InstallPath = dir;
     }
   else
     {
