$NetBSD$

--- qtsingleapplication/src/qtlocalpeer.cpp.orig	2010-12-03 21:12:46.022020096 +0000
+++ qtsingleapplication/src/qtlocalpeer.cpp
@@ -51,6 +51,9 @@ static PProcessIdToSessionId pProcessIdT
 #if defined(Q_OS_UNIX)
 #include <time.h>
 #endif
+#if defined(Q_OS_HAIKU)
+#include <unistd.h>
+#endif
 
 namespace QtLP_Private {
 #include "qtlockedfile.cpp"
