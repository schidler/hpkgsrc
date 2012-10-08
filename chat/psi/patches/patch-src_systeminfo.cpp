$NetBSD$

--- src/systeminfo.cpp.orig	2012-10-04 00:53:03.000000000 +0000
+++ src/systeminfo.cpp
@@ -25,6 +25,14 @@
 #include <windows.h>
 #endif
 
+#if defined(Q_WS_HAIKU)
+#include <sys/utsname.h>
+#include <Path.h>
+#include <FindDirectory.h>
+#include <AppFileInfo.h>
+extern "C" const char* __get_haiku_revision();
+#endif
+
 #include "systeminfo.h"
 
 #if defined(Q_WS_X11)
@@ -169,7 +177,7 @@ SystemInfo::SystemInfo() : QObject(QCore
 	os_str_ = "Unknown";
 	
 	// Detect
-#if defined(Q_WS_X11) || defined(Q_WS_MAC)
+#if defined(Q_WS_X11) || defined(Q_WS_MAC) || defined(Q_WS_HAIKU)
 	time_t x;
 	time(&x);
 	char str[256];
@@ -210,6 +218,31 @@ SystemInfo::SystemInfo() : QObject(QCore
 #endif
 	else
 		os_str_ = "Mac OS X";
+
+#elif defined(Q_WS_HAIKU)
+	QString strVersion("Haiku");
+	BPath path;
+	if (find_directory(B_BEOS_LIB_DIRECTORY, &path) == B_OK) {
+		path.Append("libbe.so");
+		BAppFileInfo appFileInfo;
+		version_info versionInfo;
+		BFile file;
+		if (file.SetTo(path.Path(), B_READ_ONLY) == B_OK
+			&& appFileInfo.SetTo(&file) == B_OK
+			&& appFileInfo.GetVersionInfo(&versionInfo, 
+				B_APP_VERSION_KIND) == B_OK
+			&& versionInfo.short_info[0] != '\0')
+				strVersion = versionInfo.short_info;
+	}
+
+	const char* haikuRevision = __get_haiku_revision();
+	if (haikuRevision != NULL) {
+		os_str_ = "Haiku";
+		os_str_ += " ( " + strVersion + " Rev. ";
+		os_str_ += haikuRevision;
+		os_str_ += ")";
+	}
+		
 #endif
 
 #if defined(Q_WS_WIN)
