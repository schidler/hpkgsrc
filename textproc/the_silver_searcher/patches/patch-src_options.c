$NetBSD$

Remove header that doesn't exist on NetBSD (and is not missed).

--- src/options.c.orig	2012-04-11 04:05:42.000000000 +0000
+++ src/options.c
@@ -3,7 +3,6 @@
 #include <stdlib.h>
 #include <string.h>
 #include <unistd.h>
-#include <xlocale.h>
 
 #include "config.h"
 #include "options.h"
