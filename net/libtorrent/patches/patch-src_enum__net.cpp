$NetBSD$

--- src/enum_net.cpp.orig	2011-02-15 06:34:34.061341696 +0000
+++ src/enum_net.cpp
@@ -51,7 +51,7 @@ POSSIBILITY OF SUCH DAMAGE.
 #include <boost/scoped_array.hpp>
 #endif
 
-#if defined TORRENT_BSD
+#if defined TORRENT_BSD && !defined __HAIKU__
 #include <sys/sysctl.h>
 #endif
 
@@ -82,6 +82,10 @@ POSSIBILITY OF SUCH DAMAGE.
 #include <ifaddrs.h>
 #endif
 
+#if defined __HAIKU__
+#include <sys/sockio.h>
+#endif
+
 namespace libtorrent { namespace
 {
 
@@ -171,7 +175,7 @@ namespace libtorrent { namespace
 	}
 #endif
 
-#if defined TORRENT_BSD
+#if defined TORRENT_BSD && !defined __HAIKU__
 
 	bool parse_route(rt_msghdr* rtm, ip_route* rt_info)
 	{
@@ -451,7 +455,7 @@ namespace libtorrent
 	{
 		std::vector<ip_route> ret;
 	
-#if defined TORRENT_BSD
+#if defined TORRENT_BSD && !defined __HAIKU__
 /*
 		struct rt_msg
 		{
