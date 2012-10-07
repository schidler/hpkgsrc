$NetBSD$

--- src/3rd_party/qtsingleapplication/qtlocalpeer.cpp.orig	2012-05-30 06:43:47.203948032 +0000
+++ src/3rd_party/qtsingleapplication/qtlocalpeer.cpp
@@ -59,6 +59,10 @@ static PProcessIdToSessionId pProcessIdT
 #include <time.h>
 #endif
 
+#if defined(Q_OS_HAIKU)
+#include <unistd.h>
+#endif
+
 namespace QtLP_Private {
 #include "qtlockedfile.cpp"
 #if defined(Q_OS_WIN)
