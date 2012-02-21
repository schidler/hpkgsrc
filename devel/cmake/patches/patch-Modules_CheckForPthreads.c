$NetBSD$

--- Modules/CheckForPthreads.c.orig	2011-10-04 16:09:24.017039360 +0000
+++ Modules/CheckForPthreads.c
@@ -16,7 +16,7 @@ int main(int ac, char*av[]){
   pthread_create(&tid[0], 0, runner, (void*)1);
   pthread_create(&tid[1], 0, runner, (void*)2);
   
-#if defined(__BEOS__) && !defined(__ZETA__)  && !defined(__HAIKU__) // (no usleep on BeOS 5.)
+#if defined(__BEOS__) && !defined(__ZETA__) // (no usleep on BeOS 5.)
   usleep(1); // for strange behavior on single-processor sun
 #endif
 
