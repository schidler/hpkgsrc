$NetBSD$

--- src/thread.cpp.orig	2012-03-27 02:02:55.004194304 +0000
+++ src/thread.cpp
@@ -33,8 +33,8 @@ POSSIBILITY OF SUCH DAMAGE.
 #include "libtorrent/thread.hpp"
 #include "libtorrent/assert.hpp"
 
-#ifdef TORRENT_BEOS
-#include <kernel/OS.h>
+#ifdef TORRENT_HAIKU
+#include <OS.h>
 #endif
 
 namespace libtorrent
@@ -43,7 +43,7 @@ namespace libtorrent
 	{
 #if defined TORRENT_WINDOWS || defined TORRENT_CYGWIN
 		Sleep(milliseconds);
-#elif defined TORRENT_BEOS
+#elif defined TORRENT_HAIKU
 		snooze_until(system_time() + boost::int64_t(milliseconds) * 1000, B_SYSTEM_TIMEBASE);
 #else
 		usleep(milliseconds * 1000);
@@ -101,7 +101,7 @@ namespace libtorrent
 		TORRENT_ASSERT(l.locked());
 		ReleaseSemaphore(m_sem, m_num_waiters, 0);
 	}
-#elif defined TORRENT_BEOS
+#elif defined TORRENT_HAIKU
 	condition::condition()
 		: m_num_waiters(0)
 	{
