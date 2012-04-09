$NetBSD$

--- tools/build/v2/tools/gcc.py.orig	2012-03-24 16:34:29.500957184 +0000
+++ tools/build/v2/tools/gcc.py
@@ -671,6 +671,9 @@ elif bjam.variable('UNIX'):
     elif host_os_name == 'BeOS':
         # BeOS has no threading options, don't set anything here.
         pass
+	elif host_os_name == 'Haiku':
+        # BeOS has no threading options, don't set anything here.
+        pass
     elif host_os_name.endswith('BSD'):
         flags('gcc', 'OPTIONS', ['<threading>multi'], ['-pthread'])
         # there is no -lrt on BSD
