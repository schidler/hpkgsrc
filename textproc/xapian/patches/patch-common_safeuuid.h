$NetBSD: patch-common_safeuuid.h,v 1.1 2011/11/26 17:21:10 joerg Exp $

Fix build with newer GCC.

--- common/safeuuid.h.orig	2011-11-26 02:56:21.000000000 +0000
+++ common/safeuuid.h
@@ -54,6 +54,7 @@ inline void uuid_unparse_lower(uuid_t uu
 
 // FreeBSD/NetBSD UUID API.
 # include <uuid.h>
+# include <cstdlib>
 # include <cstring>
 # include <exception>
 
