$NetBSD$

Minimum fix for XSS with HTTP_USER_AGENT from the repository.

--- program/steps/utils/error.inc.orig	2012-08-17 19:34:07.000000000 +0000
+++ program/steps/utils/error.inc
@@ -25,7 +25,7 @@
 
 // browser is not compatible with this application
 if ($ERROR_CODE==409) {
-  $user_agent = $_SERVER['HTTP_USER_AGENT'];
+  $user_agent = htmlentities($_SERVER['HTTP_USER_AGENT']);
   $__error_title = 'Your browser does not suit the requirements for this application';
   $__error_text = <<<EOF
 <i>Supported browsers:</i><br />
