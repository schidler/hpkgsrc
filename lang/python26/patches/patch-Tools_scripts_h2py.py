$NetBSD$

--- Tools/scripts/h2py.py.orig	2004-08-09 17:27:55.034865152 +0000
+++ Tools/scripts/h2py.py
@@ -1,4 +1,4 @@
-#! /usr/bin/env python
+#! /bin/env python
 
 # Read #define's and translate to Python code.
 # Handle #include statements.
@@ -50,7 +50,7 @@ except KeyError:
         searchdirs=os.environ['INCLUDE'].split(';')
     except KeyError:
         try:
-            if  sys.platform.find("beos") == 0:
+            if  sys.platform.find("beos") == 0 or sys.platform.find("haiku1") == 0:
                 searchdirs=os.environ['BEINCLUDES'].split(';')
             elif sys.platform.startswith("atheos"):
                 searchdirs=os.environ['C_INCLUDE_PATH'].split(':')
