$NetBSD$

--- src/corelib/tools/tools.pri.orig	2012-03-14 14:01:18.004456448 +0000
+++ src/corelib/tools/tools.pri
@@ -120,7 +120,7 @@ INCLUDEPATH += ../3rdparty/md5 \
                ../3rdparty/md4
 
 # Note: libm should be present by default becaue this is C++
-!macx-icc:!vxworks:!symbian:unix:LIBS_PRIVATE += -lm
+!macx-icc:!vxworks:!symbian:!haiku:unix:LIBS_PRIVATE += -lm
 
 symbian {
     # QLocale Symbian implementation needs this
