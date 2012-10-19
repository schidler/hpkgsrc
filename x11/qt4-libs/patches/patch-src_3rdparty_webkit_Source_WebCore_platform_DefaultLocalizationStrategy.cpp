$NetBSD: patch-src_3rdparty_webkit_Source_WebCore_platform_DefaultLocalizationStrategy.cpp,v 1.1 2012/01/12 22:59:58 adam Exp $

Fix C++ error.

--- src/3rdparty/webkit/Source/WebCore/platform/DefaultLocalizationStrategy.cpp.orig	2012-09-11 01:36:46.019136512 +0000
+++ src/3rdparty/webkit/Source/WebCore/platform/DefaultLocalizationStrategy.cpp
@@ -59,7 +59,11 @@ static String formatLocalizedString(Stri
     return result.get();
 #elif PLATFORM(QT)
     va_list arguments;
+#ifdef __clang__
+    va_start(arguments, format.charactersWithNullTermination());
+#else
     va_start(arguments, format);
+#endif
     QString result;
     result.vsprintf(format.latin1().data(), arguments);
     va_end(arguments);
