$NetBSD$

--- src/cpu/mem.h.orig	2012-10-30 20:18:45.000000000 +0000
+++ src/cpu/mem.h
@@ -23,7 +23,7 @@
 
 #include "system/types.h"
 
-bool	ppc_init_physical_memory(uint size);
+bool FASTCALL	ppc_init_physical_memory(uint size);
 
 uint32  ppc_get_memory_size();
 
