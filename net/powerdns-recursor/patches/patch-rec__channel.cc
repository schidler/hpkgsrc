$NetBSD$

We need to include cstring

--- rec_channel.cc.orig	2010-09-21 16:22:09.000000000 +0000
+++ rec_channel.cc
@@ -4,6 +4,7 @@
 #include "misc.hh"
 #include <string.h>
 #include <cstdlib>
+#include <cstring>
 #include <unistd.h>
 #include <sys/types.h>
 #include <sys/stat.h>
