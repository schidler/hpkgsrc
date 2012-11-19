$NetBSD$

* Fix variable mistakes to prevent garbled characters.  Still needs to
  fix essential problem when a header contains multiple encoded strings
  with diffreent charset.

--- plugins/mail/application/helpers/MailUtilities.class.php.orig	2012-03-05 16:41:35.000000000 +0000
+++ plugins/mail/application/helpers/MailUtilities.class.php
@@ -271,7 +271,7 @@ class MailUtilities {
 		if ($from_name == ''){
 			$from_name = $from;
 		} else if (strtoupper($encoding) =='KOI8-R' || strtoupper($encoding) =='CP866' || $from_encoding != 'UTF-8' || !$enc_conv->isUtf8RegExp($from_name)){ //KOI8-R and CP866 are Russian encodings which PHP does not detect
-			$utf8_from = $enc_conv->convert($encoding, 'UTF-8', $from_name);
+			$utf8_from = $enc_conv->convert($from_encoding, 'UTF-8', $from_name);
 
 			if ($enc_conv->hasError()) {
 				$utf8_from = utf8_encode($from_name);
@@ -286,7 +286,7 @@ class MailUtilities {
 		$subject_encoding = detect_encoding($subject_aux);
 		
 		if (strtoupper($encoding) =='KOI8-R' || strtoupper($encoding) =='CP866' || $subject_encoding != 'UTF-8' || !$enc_conv->isUtf8RegExp($subject_aux)){ //KOI8-R and CP866 are Russian encodings which PHP does not detect
-			$utf8_subject = $enc_conv->convert($encoding, 'UTF-8', $subject_aux);
+			$utf8_subject = $enc_conv->convert($subject_encoding, 'UTF-8', $subject_aux);
 			
 			if ($enc_conv->hasError()) {
 				$utf8_subject = utf8_encode($subject_aux);
