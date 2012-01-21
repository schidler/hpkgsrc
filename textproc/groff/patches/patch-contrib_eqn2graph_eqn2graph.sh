$NetBSD: patch-contrib_eqn2graph_eqn2graph.sh,v 1.1 2011/07/19 21:09:38 tez Exp $

Fix many temporary file handling issues, including in pdfroff
(resolves CVE-2009-5044 / SA44999)
Patches copied from:
 http://cvsweb.openwall.com/cgi/cvsweb.cgi/Owl/packages/groff/groff-1.20.1-owl-tmp.diff?rev=1.2
Modified for pkgsrc and excluded a documentaion change to doc/groff.texinfo
that changes a `makeinfo' is too old warning into a fatal error.

--- contrib/eqn2graph/eqn2graph.sh.orig	2009-01-09 14:25:52.000000000 +0000
+++ contrib/eqn2graph/eqn2graph.sh
@@ -69,6 +69,8 @@ for d in "$GROFF_TMPDIR" "$TMPDIR" "$TMP
 
     tmp=$d/eqn2graph$$-$RANDOM
     (umask 077 && mkdir $tmp) 2> /dev/null && break
+
+    tmp=
 done;
 if test -z "$tmp"; then
     echo "$0: cannot create temporary directory" >&2
