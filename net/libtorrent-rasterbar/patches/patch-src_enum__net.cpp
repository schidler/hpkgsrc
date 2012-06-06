$NetBSD$

--- src/enum_net.cpp.orig	2012-03-27 02:02:55.014417920 +0000
+++ src/enum_net.cpp
@@ -87,6 +87,10 @@ POSSIBILITY OF SUCH DAMAGE.
 #include <ifaddrs.h>
 #endif
 
+#if defined __HAIKU__
+#include <sys/sockio.h>
+#endif
+
 namespace libtorrent { namespace
 {
 
