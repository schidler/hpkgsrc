$NetBSD$

--- CPP/Windows/System.cpp.orig	2009-02-15 09:19:45.040108032 +0000
+++ CPP/Windows/System.cpp
@@ -15,7 +15,7 @@
 #include <sys/sysinfo.h>
 #endif
 
-#if defined(ENV_BEOS)
+#if defined(ENV_BEOS) || defined(ENV_HAIKU)
 #include <be/kernel/OS.h>
 #endif
 
@@ -79,7 +79,7 @@ namespace NWindows
 			if (nbcpu < 1) nbcpu = 1;
 			return nbcpu;
 		}
-		#elif defined(ENV_BEOS)
+		#elif !defined(ENV_BEOS) || !defined(ENV_HAIKU)
 		UInt32 GetNumberOfProcessors() {
 			system_info info;
 			get_system_info(&info);
