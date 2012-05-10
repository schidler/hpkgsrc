$NetBSD$

--- src/common.h.orig	2010-03-25 14:58:11.000000000 +0000
+++ src/common.h
@@ -206,6 +206,8 @@
 
 #if defined(__CYGWIN__)
     #define DEFAULT_CONFIG_HOME         "MediaTomb"
+#elif defined(__HAIKU__)
+    #define DEFAULT_CONFIG_HOME         "config/settings/mediatomb"
 #else
     #define DEFAULT_CONFIG_HOME         ".mediatomb"
 #endif
