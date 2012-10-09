$NetBSD$

--- qwt/qwtbuild.pri.orig	2012-10-08 11:12:31.846200832 +0000
+++ qwt/qwtbuild.pri
@@ -14,7 +14,7 @@
 CONFIG           += qt     
 CONFIG           += warn_on
 CONFIG           += no_keywords
-!haiku{
+!haiku {
 CONFIG           += silent
 	}
 
