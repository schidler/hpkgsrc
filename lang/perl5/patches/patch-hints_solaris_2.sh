$NetBSD: patch-hints_solaris_2.sh,v 1.1 2012/06/14 16:12:11 jperkin Exp $

https://rt.perl.org/rt3/Public/Bug/Display.html?id=63604

--- hints/solaris_2.sh.orig	2012-04-25 00:18:34.010485760 +0000
+++ hints/solaris_2.sh
@@ -594,7 +594,7 @@ EOM
 #		    ccflags="$ccflags -Wa,`getconf XBS5_LP64_OFF64_CFLAGS 2>/dev/null`"
 #		fi
 		ldflags="$ldflags -m64"
-		lddlflags="$lddlflags -G -m64"
+		lddlflags="$lddlflags -shared -m64"
 		;;
 	    *)
 		getconfccflags="`getconf XBS5_LP64_OFF64_CFLAGS 2>/dev/null`"
