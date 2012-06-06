$NetBSD$

--- tools/build/v2/engine/fileunix.c.orig	2012-06-06 04:46:34.488112128 +0000
+++ tools/build/v2/engine/fileunix.c
@@ -80,6 +80,7 @@ struct ar_hdr       /* archive file memb
 # endif
 
 # if defined( OS_QNX ) || \
+	 defined( OS_HAIKU ) || \ 
      defined( OS_BEOS ) || \
      defined( OS_MPEIX )
 # define NO_AR
