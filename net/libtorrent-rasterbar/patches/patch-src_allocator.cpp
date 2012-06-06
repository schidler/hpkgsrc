$NetBSD$

--- src/allocator.cpp.orig	2012-03-27 02:02:55.012058624 +0000
+++ src/allocator.cpp
@@ -36,15 +36,12 @@ POSSIBILITY OF SUCH DAMAGE.
 
 #ifdef TORRENT_WINDOWS
 #include <windows.h>
-#elif defined TORRENT_BEOS
-#include <kernel/OS.h>
-#include <stdlib.h> // malloc/free
 #else
 #include <stdlib.h> // valloc/free
 #include <unistd.h> // _SC_PAGESIZE
 #endif
 
-#if TORRENT_USE_MEMALIGN || TORRENT_USE_POSIX_MEMALIGN
+#if TORRENT_USE_MEMALIGN || TORRENT_USE_POSIX_MEMALIGN || defined TORRENT_HAIKU
 #include <malloc.h> // memalign
 #endif
 
@@ -77,8 +74,6 @@ namespace libtorrent
 		SYSTEM_INFO si;
 		GetSystemInfo(&si);
 		s = si.dwPageSize;
-#elif defined TORRENT_BEOS
-		s = B_PAGE_SIZE;
 #else
 		s = sysconf(_SC_PAGESIZE);
 #endif
@@ -116,12 +111,6 @@ namespace libtorrent
 		return (char*)memalign(page_size(), bytes);
 #elif defined TORRENT_WINDOWS
 		return (char*)VirtualAlloc(0, bytes, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
-#elif defined TORRENT_BEOS
-		void* ret = 0;
-		area_id id = create_area("", &ret, B_ANY_ADDRESS
-			, (bytes + page_size() - 1) & (page_size()-1), B_NO_LOCK, B_READ_AREA | B_WRITE_AREA);
-		if (id < B_OK) return 0;
-		return (char*)ret;
 #else
 		return (char*)valloc(bytes);
 #endif
@@ -150,10 +139,6 @@ namespace libtorrent
 
 #ifdef TORRENT_WINDOWS
 		VirtualFree(block, 0, MEM_RELEASE);
-#elif defined TORRENT_BEOS
-		area_id id = area_for(block);
-		if (id < B_OK) return;
-		delete_area(id);
 #else
 		::free(block);
 #endif
