$NetBSD$

--- engine/SCons/Platform/__init__.py.orig	2010-07-25 23:15:08.000000000 +0000
+++ engine/SCons/Platform/__init__.py
@@ -79,6 +79,8 @@ def platform_default():
             return 'aix'
         elif string.find(sys.platform, 'darwin') != -1:
             return 'darwin'
+        elif sys.platform.find('haiku') != -1:
+            return 'haiku'
         else:
             return 'posix'
     elif os.name == 'os2':
