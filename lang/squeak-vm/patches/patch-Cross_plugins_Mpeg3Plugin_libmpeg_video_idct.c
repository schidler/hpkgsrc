$NetBSD$

--- Cross/plugins/Mpeg3Plugin/libmpeg/video/idct.c.orig	2012-10-20 13:53:28.000000000 +0000
+++ Cross/plugins/Mpeg3Plugin/libmpeg/video/idct.c
@@ -70,7 +70,7 @@
 
  
 inline 
-int mpeg3video_idctrow(short *blk)
+void mpeg3video_idctrow(short *blk)
 {
 	int x0, x1, x2, x3, x4, x5, x6, x7, x8;
 
@@ -134,7 +134,7 @@ int mpeg3video_idctrow(short *blk)
 
 
 inline
-int mpeg3video_idctcol(short *blk)
+void mpeg3video_idctcol(short *blk)
 {
   int x0, x1, x2, x3, x4, x5, x6, x7, x8;
 
