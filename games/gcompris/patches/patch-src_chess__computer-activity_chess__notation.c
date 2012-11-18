$NetBSD$

--- src/chess_computer-activity/chess_notation.c.orig	2011-01-08 22:27:13.000000000 +0000
+++ src/chess_computer-activity/chess_notation.c
@@ -203,7 +203,7 @@ piece_to_ascii (int piece)
   if(WPIECE(piece))
     return piece_to_ascii_full[i];
   else
-    return tolower(piece_to_ascii_full[i]);
+    return tolower((unsigned char)piece_to_ascii_full[i]);
 
   g_assert_not_reached ();
 
