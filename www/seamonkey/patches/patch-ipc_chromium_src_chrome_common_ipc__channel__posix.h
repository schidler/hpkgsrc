$NetBSD: patch-ipc_chromium_src_chrome_common_ipc__channel__posix.h,v 1.4 2012/04/28 22:48:06 ryoon Exp $

--- mozilla/ipc/chromium/src/chrome/common/ipc_channel_posix.h.orig	2012-08-27 04:49:15.000000000 +0000
+++ mozilla/ipc/chromium/src/chrome/common/ipc_channel_posix.h
@@ -95,7 +95,7 @@ class Channel::ChannelImpl : public Mess
   };
 
   // This is a control message buffer large enough to hold kMaxReadFDs
-#if defined(OS_MACOSX)
+#if defined(OS_MACOSX) || defined(OS_NETBSD)
   // TODO(agl): OSX appears to have non-constant CMSG macros!
   char input_cmsg_buf_[1024];
 #else
