$NetBSD$

--- src/php.ll.orig	2011-11-25 17:21:59.000000000 +0000
+++ src/php.ll
@@ -23,7 +23,7 @@
 %{
 #include <assert.h>
 #include <ctype.h>
-#include <iostream.h>
+#include <iostream>
 #include <stdio.h>
 
 #include "doc.h"
