$NetBSD$

--- fribidi_char_sets_iso8859_8.c.orig	2012-01-22 21:56:52.000000000 +0000
+++ fribidi_char_sets_iso8859_8.c
@@ -106,7 +106,7 @@ fribidi_unicode_to_iso8859_8_c (FriBidiC
     case UNI_PDF:
       return (char) ISO_8859_8_PDF;
     }
-  return '�';
+  return (char)0xbf;
 }
 
 int
