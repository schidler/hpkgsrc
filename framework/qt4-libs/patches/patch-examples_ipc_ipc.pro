$NetBSD$

--- examples/ipc/ipc.pro.orig	2012-04-26 19:45:53.040370176 +0000
+++ examples/ipc/ipc.pro
@@ -1,6 +1,6 @@
 TEMPLATE      = subdirs
 # no QSharedMemory
-!vxworks:!qnx:SUBDIRS = sharedmemory
+!vxworks:!qnx:!haiku:SUBDIRS = sharedmemory
 !wince*: SUBDIRS += localfortuneserver localfortuneclient
 
 # install
