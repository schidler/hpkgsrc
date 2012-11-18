$NetBSD$

* DragonFly BSD support

--- Foundation/include/Poco/Platform.h.orig	2010-12-16 05:43:25 +0000
+++ Foundation/include/Poco/Platform.h
@@ -93,6 +93,10 @@
 	#define POCO_OS_FAMILY_UNIX 1
 	#define POCO_OS_FAMILY_BSD 1
 	#define POCO_OS POCO_OS_OPEN_BSD
+#elif defined(__DragonFly__)
+	#define POCO_OS_FAMILY_UNIX 1
+	#define POCO_OS_FAMILY_BSD 1
+	#define POCO_OS POCO_OS_FREE_BSD
 #elif defined(sgi) || defined(__sgi)
 	#define POCO_OS_FAMILY_UNIX 1
 	#define POCO_OS POCO_OS_IRIX
