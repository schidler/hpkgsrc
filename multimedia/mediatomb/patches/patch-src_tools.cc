$NetBSD$

--- src/tools.cc.orig	2010-03-25 14:58:11.023855104 +0000
+++ src/tools.cc
@@ -46,7 +46,7 @@
 #include <string.h>
 #include "config_manager.h"
 
-#ifndef SOLARIS
+#if !defined(SOLARIS) && !defined(__HAIKU__)
     #include <net/if.h>
 #else
     #include <fcntl.h>
