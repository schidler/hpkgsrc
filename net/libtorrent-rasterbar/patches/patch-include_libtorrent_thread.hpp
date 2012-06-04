$NetBSD$

--- include/libtorrent/thread.hpp.orig	2012-03-27 02:03:11.020185088 +0000
+++ include/libtorrent/thread.hpp
@@ -40,8 +40,8 @@ POSSIBILITY OF SUCH DAMAGE.
 #include <winsock2.h>
 #endif
 
-#if defined TORRENT_BEOS
-#include <kernel/OS.h>
+#if defined TORRENT_HAIKU
+#include <OS.h>
 #endif
 
 #include <memory> // for auto_ptr required by asio
@@ -71,7 +71,7 @@ namespace libtorrent
 		HANDLE m_sem;
 		mutex m_mutex;
 		int m_num_waiters;
-#elif defined TORRENT_BEOS
+#elif defined TORRENT_HAIKU
 		sem_id m_sem;
 		mutex m_mutex;
 		int m_num_waiters;
