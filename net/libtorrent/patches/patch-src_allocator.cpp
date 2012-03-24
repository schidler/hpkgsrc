$NetBSD$

--- src/allocator.cpp.orig	2012-03-24 20:49:06.693633024 +0000
+++ src/allocator.cpp
@@ -41,7 +41,7 @@ POSSIBILITY OF SUCH DAMAGE.
 #include <unistd.h> // _SC_PAGESIZE
 #endif
 
-#if TORRENT_USE_MEMALIGN || TORRENT_USE_POSIX_MEMALIGN
+#if TORRENT_USE_MEMALIGN || TORRENT_USE_POSIX_MEMALIGN || defined __HAIKU__
 #include <malloc.h> // memalign
 #endif
 
