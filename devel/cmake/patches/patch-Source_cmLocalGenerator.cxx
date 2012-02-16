$NetBSD$

--- Source/cmLocalGenerator.cxx.orig	2011-10-04 16:09:25.008650752 +0000
+++ Source/cmLocalGenerator.cxx
@@ -37,7 +37,8 @@
 #include <assert.h>
 
 #if defined(__HAIKU__)
-#include <StorageKit.h>
+#include <FindDirectory.h>
+#include <StorageDefs.h>
 #endif
 
 cmLocalGenerator::cmLocalGenerator()
@@ -354,12 +355,12 @@ void cmLocalGenerator::GenerateInstallRu
     prefix = prefix_win32.c_str();
     }
 #elif defined(__HAIKU__)
+ char dir[B_PATH_NAME_LENGTH];
   if (!prefix)
     {
-    BPath dir;
-    if (find_directory(B_COMMON_DIRECTORY, &dir) == B_OK)
+    if (find_directory(B_COMMON_DIRECTORY, -1, false, dir, sizeof(dir)) == B_OK)
       {
-      prefix = dir.Path();
+      prefix = dir;
       }
     else
       {
