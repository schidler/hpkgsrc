$NetBSD$

Fix for GCC 4.7.
--- src/3rdparty/webkit/Source/JavaScriptCore/wtf/text/StringImpl.h.orig	2012-09-11 01:36:45.007864320 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/wtf/text/StringImpl.h
@@ -24,6 +24,7 @@
 #define StringImpl_h
 
 #include <limits.h>
+#include <unistd.h>
 #include <wtf/ASCIICType.h>
 #include <wtf/CrossThreadRefCounted.h>
 #include <wtf/Forward.h>
