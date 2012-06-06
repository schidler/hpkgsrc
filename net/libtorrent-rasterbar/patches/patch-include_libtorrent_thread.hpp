$NetBSD$

--- include/libtorrent/thread.hpp.orig	2012-03-27 02:03:11.038535168 +0000
+++ include/libtorrent/thread.hpp
@@ -40,10 +40,6 @@ POSSIBILITY OF SUCH DAMAGE.
 #include <winsock2.h>
 #endif
 
-#if defined TORRENT_BEOS
-#include <kernel/OS.h>
-#endif
-
 #include <memory> // for auto_ptr required by asio
 
 #include <boost/asio/detail/thread.hpp>
@@ -71,7 +67,6 @@ namespace libtorrent
 		HANDLE m_sem;
 		mutex m_mutex;
 		int m_num_waiters;
-#elif defined TORRENT_BEOS
 		sem_id m_sem;
 		mutex m_mutex;
 		int m_num_waiters;
