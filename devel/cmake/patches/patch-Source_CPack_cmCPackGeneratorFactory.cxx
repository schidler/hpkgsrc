$NetBSD$

--- Source/CPack/cmCPackGeneratorFactory.cxx.orig	2011-10-04 16:09:25.064487424 +0000
+++ Source/CPack/cmCPackGeneratorFactory.cxx
@@ -32,7 +32,7 @@
 #endif
 
 #if !defined(_WIN32) && !defined(__APPLE__) \
- && !defined(__QNXNTO__) && !defined(__BEOS__)
+ && !defined(__QNXNTO__) && !defined(__BEOS__) && !defined(__HAIKU__)
 #  include "cmCPackDebGenerator.h"
 #  include "cmCPackRPMGenerator.h"
 #endif
@@ -73,7 +73,7 @@ cmCPackGeneratorFactory::cmCPackGenerato
     cmCPackOSXX11Generator::CreateGenerator);
 #endif
 #if !defined(_WIN32) && !defined(__APPLE__) \
-  && !defined(__QNXNTO__) && !defined(__BEOS__)
+  && !defined(__QNXNTO__) && !defined(__BEOS__) && !defined(__HAIKU__)
   this->RegisterGenerator("DEB", "Debian packages",
     cmCPackDebGenerator::CreateGenerator);
   this->RegisterGenerator("RPM", "RPM packages",
