$NetBSD$

--- include/libtorrent/config.hpp.orig	2012-04-04 23:26:39.029622272 +0000
+++ include/libtorrent/config.hpp
@@ -212,14 +212,15 @@ POSSIBILITY OF SUCH DAMAGE.
 #define TORRENT_USE_IFCONF 1
 #define TORRENT_HAS_SALEN 0
 
-// ==== BEOS ===
-#elif defined __BEOS__ || defined __HAIKU__
-#define TORRENT_BEOS
-#include <storage/StorageDefs.h> // B_PATH_NAME_LENGTH
+// ==== Haiku ===
+#elif defined __HAIKU__
+#define TORRENT_HAIKU
+#include <StorageDefs.h> // B_PATH_NAME_LENGTH
 #define TORRENT_HAS_FALLOCATE 0
 #define TORRENT_USE_MLOCK 0
 #ifndef TORRENT_USE_ICONV
 #define TORRENT_USE_ICONV 0
+#define TORRENT_USE_IFCONF 1
 #endif
 
 // ==== GNU/Hurd ===
