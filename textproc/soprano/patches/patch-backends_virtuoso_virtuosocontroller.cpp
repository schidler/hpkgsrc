$NetBSD$

Need unistd.h for sleep()

--- backends/virtuoso/virtuosocontroller.cpp.orig	Thu Aug  2 11:50:43 2012
+++ backends/virtuoso/virtuosocontroller.cpp	Thu Aug  2 11:50:52 2012
@@ -39,6 +39,7 @@
 #include <sys/types.h>
 #include <signal.h>
 #include <sys/wait.h>
+#include <unistd.h>
 #endif
 
 Q_DECLARE_METATYPE( QProcess::ExitStatus )
