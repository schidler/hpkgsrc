$NetBSD$

Add missing include.

--- src/symbol.cc.orig	2005-09-07 13:34:24.000000000 +0000
+++ src/symbol.cc
@@ -30,6 +30,7 @@ Boston, MA 02111-1307, USA.  */
 #include <iostream>
 #include <iomanip>
 #include <sstream>
+#include <typeinfo>
 
 #include <string>
 #include <vector>
