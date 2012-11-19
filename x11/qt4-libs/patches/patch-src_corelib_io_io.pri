$NetBSD$

Use kqueue instead of fam to monitor the file system
--- src/corelib/io/io.pri.orig	2012-09-11 01:36:50.056885248 +0000
+++ src/corelib/io/io.pri
@@ -103,7 +103,7 @@ win32 {
         }
 
         !nacl {
-            freebsd-*|macx-*|darwin-*|openbsd-*:{
+            freebsd-*|macx-*|darwin-*|openbsd-*|netbsd-*:{
                 SOURCES += io/qfilesystemwatcher_kqueue.cpp
                 HEADERS += io/qfilesystemwatcher_kqueue_p.h
             }
