$NetBSD$

--- Tools/scripts/h2py.py.orig	2012-04-09 23:07:35.007864320 +0000
+++ Tools/scripts/h2py.py
@@ -50,7 +50,7 @@ except KeyError:
         searchdirs=os.environ['INCLUDE'].split(';')
     except KeyError:
         try:
-            if  sys.platform.find("beos") == 0:
+            if  sys.platform.find("beos") == 0 or sys.platform.find("haiku1") == 0:
                 searchdirs=os.environ['BEINCLUDES'].split(';')
             elif sys.platform.startswith("atheos"):
                 searchdirs=os.environ['C_INCLUDE_PATH'].split(':')
