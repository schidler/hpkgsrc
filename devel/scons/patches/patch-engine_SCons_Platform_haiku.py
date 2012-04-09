$NetBSD$

--- engine/SCons/Platform/haiku.py.orig	2012-02-22 07:05:49.519569408 +0000
+++ engine/SCons/Platform/haiku.py
@@ -0,0 +1,54 @@
+"""SCons.Platform.haiku
+
+Platform-specific initialization for Haiku systems.
+
+There normally shouldn't be any need to import this module directly. It
+will usually be imported through the generic SCons.Platform.Platform()
+selection method.
+"""
+
+#
+# Copyright (c) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011 The SCons Foundation
+#
+# Permission is hereby granted, free of charge, to any person obtaining
+# a copy of this software and associated documentation files (the
+# "Software"), to deal in the Software without restriction, including
+# without limitation the rights to use, copy, modify, merge, publish,
+# distribute, sublicense, and/or sell copies of the Software, and to
+# permit persons to whom the Software is furnished to do so, subject to
+# the following conditions:
+#
+# The above copyright notice and this permission notice shall be included
+# in all copies or substantial portions of the Software.
+#
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
+# KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
+# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
+# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
+# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
+# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
+#
+
+__revision__ = ""
+
+import posix
+import commands
+
+def findDir( identifier ):
+        return commands.getoutput( 'finddir %s' % identifier )
+
+def generate(env):
+        posix.generate(env)
+        
+        # path list
+        listPath = [ '.' ]
+        listPath.append( '%s/bin' % findDir( 'B_USER_CONFIG_DIRECTORY' ) )
+        listPath.append( findDir( 'B_COMMON_BIN_DIRECTORY' ) )
+        listPath.append( findDir( 'B_SYSTEM_BIN_DIRECTORY' ) )
+        listPath.append( findDir( 'B_BEOS_BIN_DIRECTORY' ) )
+        listPath.append( '%s/tools/gnupro/bin' % findDir( 'B_COMMON_DEVELOP_DIRECTORY' ) )
+        env['ENV']['PATH'] = ':'.join( listPath )
+        
+        # help the linker find the startfiles
+        env['ENV']['BELIBRARIES'] = ':%s/lib/x86' % findDir( 'B_COMMON_DEVELOP_DIRECTORY' )
