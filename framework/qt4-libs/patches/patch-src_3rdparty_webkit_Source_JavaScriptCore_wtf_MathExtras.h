$NetBSD$

--- src/3rdparty/webkit/Source/JavaScriptCore/wtf/MathExtras.h.orig	2012-04-26 19:46:13.042991616 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/wtf/MathExtras.h
@@ -252,7 +252,7 @@ inline int clampToInteger(unsigned value
     return static_cast<int>(std::min(value, static_cast<unsigned>(std::numeric_limits<int>::max())));
 }
 
-#if !COMPILER(MSVC) && !(COMPILER(RVCT) && PLATFORM(BREWMP)) && !OS(SOLARIS) && !OS(SYMBIAN)
+#if !COMPILER(MSVC) && !(COMPILER(RVCT) && PLATFORM(BREWMP)) && !OS(SOLARIS) && !OS(SYMBIAN) && !OS(HAIKU)
 using std::isfinite;
 using std::isinf;
 using std::isnan;
