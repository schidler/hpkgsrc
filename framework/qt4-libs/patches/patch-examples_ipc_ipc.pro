$NetBSD$

--- examples/ipc/ipc.pro.orig	2012-03-14 14:01:35.012845056 +0000
+++ examples/ipc/ipc.pro
@@ -1,6 +1,6 @@
 TEMPLATE      = subdirs
 # no QSharedMemory
-!vxworks:!qnx:SUBDIRS = sharedmemory
+!vxworks:!qnx:!haiku:SUBDIRS = sharedmemory
 !wince*: SUBDIRS += localfortuneserver localfortuneclient
 
 # install