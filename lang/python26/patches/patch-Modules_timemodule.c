$NetBSD$

--- Modules/timemodule.c.orig	2011-01-02 23:26:12.005242880 +0000
+++ Modules/timemodule.c
@@ -972,11 +972,11 @@ floatsleep(double secs)
         return -1;
     }
     Py_END_ALLOW_THREADS
-#elif defined(__BEOS__)
+#elif defined(__BEOS__) || defined(__HAIKU__)
     /* This sleep *CAN BE* interrupted. */
     {
         if( secs <= 0.0 ) {
-            return;
+            return 0;
         }
 
         Py_BEGIN_ALLOW_THREADS
