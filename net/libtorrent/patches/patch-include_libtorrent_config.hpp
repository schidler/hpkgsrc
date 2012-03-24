$NetBSD$

--- include/libtorrent/config.hpp.orig	2012-01-19 07:39:18.005505024 +0000
+++ include/libtorrent/config.hpp
@@ -123,7 +123,7 @@ POSSIBILITY OF SUCH DAMAGE.
 
 // set up defines for target environments
 #if (defined __APPLE__ && __MACH__) || defined __FreeBSD__ || defined __NetBSD__ \
-	|| defined __OpenBSD__ || defined __bsdi__ || defined __DragonFly__ \
+	|| defined __OpenBSD__ || defined __bsdi__ || defined __DragonFly__ || defined __HAIKU__\
 	|| defined __FreeBSD_kernel__
 #define TORRENT_BSD
 #define TORRENT_HAS_FALLOCATE 0
@@ -145,7 +145,9 @@ POSSIBILITY OF SUCH DAMAGE.
 #endif
 
 #define TORRENT_USE_IPV6 1
+#if !defined __HAIKU__
 #define TORRENT_USE_MLOCK 1
+#endif
 #define TORRENT_USE_READV 1
 #define TORRENT_USE_WRITEV 1
 #define TORRENT_USE_IOSTREAM 1
