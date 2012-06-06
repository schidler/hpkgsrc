$NetBSD$

--- src/thread.cpp.orig	2012-03-27 02:02:55.021757952 +0000
+++ src/thread.cpp
@@ -33,18 +33,12 @@ POSSIBILITY OF SUCH DAMAGE.
 #include "libtorrent/thread.hpp"
 #include "libtorrent/assert.hpp"
 
-#ifdef TORRENT_BEOS
-#include <kernel/OS.h>
-#endif
-
 namespace libtorrent
 {
 	void sleep(int milliseconds)
 	{
 #if defined TORRENT_WINDOWS || defined TORRENT_CYGWIN
 		Sleep(milliseconds);
-#elif defined TORRENT_BEOS
-		snooze_until(system_time() + boost::int64_t(milliseconds) * 1000, B_SYSTEM_TIMEBASE);
 #else
 		usleep(milliseconds * 1000);
 #endif
@@ -101,7 +95,7 @@ namespace libtorrent
 		TORRENT_ASSERT(l.locked());
 		ReleaseSemaphore(m_sem, m_num_waiters, 0);
 	}
-#elif defined TORRENT_BEOS
+#elif defined TORRENT_HAIKU
 	condition::condition()
 		: m_num_waiters(0)
 	{
