$NetBSD: patch-run-tests.php,v 1.1 2012/06/16 05:21:55 taca Exp $

Use proper shbang line.

--- run-tests.php.orig	2012-10-16 10:05:41.006029312 +0000
+++ run-tests.php
@@ -1,4 +1,4 @@
-#!/usr/bin/env php
+#!/boot/common/pkg/bin/php
 <?php
 /*
    +----------------------------------------------------------------------+
