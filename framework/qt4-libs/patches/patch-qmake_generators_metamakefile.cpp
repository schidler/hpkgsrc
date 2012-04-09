$NetBSD$

--- qmake/generators/metamakefile.cpp.orig	2011-12-08 05:06:02.031457280 +0000
+++ qmake/generators/metamakefile.cpp
@@ -541,6 +541,9 @@ MetaMakefileGenerator::modesForGenerator
     } else if (gen == "MINGW") {
 #if defined(Q_OS_MAC)
         *host_mode = Option::HOST_MACX_MODE;
+#elif defined(Q_OS_HAIKU)
+        *host_mode = Option::HOST_HAIKU_MODE;
+        *target_mode = Option::TARG_HAIKU_MODE;
 #elif defined(Q_OS_UNIX)
         *host_mode = Option::HOST_UNIX_MODE;
 #else
