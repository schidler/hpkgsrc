$NetBSD: patch-src_3rdparty_webkit_Source_JavaScriptCore_wtf_Threading.h,v 1.1 2012/02/16 20:42:46 hans Exp $

--- src/3rdparty/webkit/Source/JavaScriptCore/wtf/Threading.h.orig	2011-12-08 05:06:02.062390272 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/wtf/Threading.h
@@ -113,6 +113,8 @@ using WTF::createThread;
 using WTF::currentThread;
 using WTF::detachThread;
 using WTF::waitForThreadCompletion;
+#if !OS(SOLARIS)
 using WTF::yield;
+#endif
 
 #endif // Threading_h
