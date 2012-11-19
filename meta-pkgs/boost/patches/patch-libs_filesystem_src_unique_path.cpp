$NetBSD$

Include unistd.h for read() and close()

--- libs/filesystem/src/unique_path.cpp.orig	2012-03-26 12:44:24.058458112 +0000
+++ libs/filesystem/src/unique_path.cpp
@@ -21,6 +21,7 @@
 
 # ifdef BOOST_POSIX_API
 #   include <fcntl.h>
+#   include <unistd.h>
 # else // BOOST_WINDOWS_API
 #   include <windows.h>
 #   include <wincrypt.h>
