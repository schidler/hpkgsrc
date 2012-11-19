$NetBSD$

--- migemo-convert.rb.orig	2003-05-26 06:55:22.000000000 +0000
+++ migemo-convert.rb
@@ -1,3 +1,4 @@
+#coding: euc-jp
 #
 # Ruby/Migemo - a library for Japanese incremental search.
 #
@@ -14,12 +15,12 @@
 #
 # Convert a SKK's dictionary into Migemo's.
 #
-$KCODE= "e"
 require 'romkan'
 
 HIRAGANA = "[��-�󡼡�]"
 KANJI = "[��-��]"
 
+$stdin.set_encoding(Encoding::EUC_JP)
 puts ";;"
 puts ";; This is Migemo's dictionary generated from SKK's."
 puts ";;"
