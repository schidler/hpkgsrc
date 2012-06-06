$NetBSD$

--- src/fs_utils.cpp.orig	2012-05-20 15:15:31.000000000 +0000
+++ src/fs_utils.cpp
@@ -53,7 +53,9 @@
 #include <sys/param.h>
 #include <sys/mount.h>
 #else
-#include <sys/vfs.h>
+#ifdef Q_WS_HAIKU
+#include <kernel/fs_info.h>
+#endif
 #endif
 #else
 #include <winbase.h>
@@ -263,6 +265,18 @@ long long fsutils::freeDiskSpaceOnPath(Q
 
 #ifndef Q_WS_WIN
   unsigned long long available;
+#ifdef Q_WS_HAIKU
+  const QString statfs_path = dir_path.path()+"/.";
+  dev_t device = dev_for_path (qPrintable(statfs_path));
+  if (device >= 0) {
+	fs_info info;
+  if(fs_stat_dev(device, &info)==B_OK){
+  	available = ((unsigned long long)(info.free_blocks*info.block_size));
+  return available;
+  }
+ }
+  return -1;
+#else
   struct statfs stats;
   const QString statfs_path = dir_path.path()+"/.";
   const int ret = statfs (qPrintable(statfs_path), &stats) ;
@@ -273,6 +287,7 @@ long long fsutils::freeDiskSpaceOnPath(Q
   } else {
     return -1;
   }
+#endif
 #else
   typedef BOOL (WINAPI *GetDiskFreeSpaceEx_t)(LPCTSTR,
                                               PULARGE_INTEGER,
