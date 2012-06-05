$NetBSD$

--- src/3rdparty/webkit/Source/JavaScriptCore/JavaScriptCore.pri.orig	2012-06-04 19:01:52.697827328 +0000
+++ src/3rdparty/webkit/Source/JavaScriptCore/JavaScriptCore.pri
@@ -86,9 +86,7 @@ defineTest(prependJavaScriptCoreLib) {
     } else {
         # Make sure jscore will be early in the list of libraries to workaround a bug in MinGW
         # that can't resolve symbols from QtCore if libjscore comes after.
-        QMAKE_LIBDIR = $$pathToJavaScriptCoreOutput $$QMAKE_LIBDIR
         LIBS = -l$$JAVASCRIPTCORE_TARGET $$LIBS
-        POST_TARGETDEPS += $${pathToJavaScriptCoreOutput}$${QMAKE_DIR_SEP}lib$${JAVASCRIPTCORE_TARGET}.a
     }
 
     win32-* {
