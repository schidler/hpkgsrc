$NetBSD$

- deal with lack of pthread_yield on NetBSD
- XXX needs other platforms to be checked.

--- src/ptlib/unix/tlibthrd.cxx.orig    2012-08-23 02:12:27.000000000 +0000
+++ src/ptlib/unix/tlibthrd.cxx
@@ -1531,7 +1531,11 @@ PTimedMutex::~PTimedMutex()
     for (PINDEX i = 0; i < 100; ++i) {
       if ((result = pthread_mutex_destroy(&m_mutex)) != EBUSY)
         break;
+#if defined(P_NETBSD)
+      sched_yield();
+#else
       pthread_yield();
+#endif
     }
   }

