$NetBSD$

--- scheduler/process.c.orig	2012-04-25 11:07:22.603455488 +0000
+++ scheduler/process.c
@@ -499,8 +499,10 @@ cupsdStartProcess(
     * (this is not done for root processes...)
     */
 
+#ifndef __HAIKU__
     if (!root)
       nice(FilterNice);
+#endif
 
    /*
     * Reset group membership to just the main one we belong to.
