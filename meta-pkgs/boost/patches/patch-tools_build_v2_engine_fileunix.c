$NetBSD$

--- tools/build/v2/engine/fileunix.c.orig	2012-04-26 03:35:55.058195968 +0000
+++ tools/build/v2/engine/fileunix.c
@@ -80,6 +80,7 @@ struct ar_hdr       /* archive file memb
 # endif
 
 # if defined( OS_QNX ) || \
+	 defined( OS_HAIKU ) || \ 
      defined( OS_BEOS ) || \
      defined( OS_MPEIX )
 # define NO_AR
