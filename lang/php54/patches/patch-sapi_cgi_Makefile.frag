$NetBSD$

--- sapi/cgi/Makefile.frag.orig	2012-10-16 10:05:41.018350080 +0000
+++ sapi/cgi/Makefile.frag
@@ -4,6 +4,6 @@ $(SAPI_CGI_PATH): $(PHP_GLOBAL_OBJS) $(P
 	$(BUILD_CGI)
 
 install-cgi: $(SAPI_CGI_PATH)
-	@echo "Installing PHP CGI binary:        $(INSTALL_ROOT)$(bindir)/"
-	@$(INSTALL) -m 0755 $(SAPI_CGI_PATH) $(INSTALL_ROOT)$(bindir)/$(program_prefix)php-cgi$(program_suffix)$(EXEEXT)
+	@echo "Installing PHP CGI binary:        $(INSTALL_ROOT)/boot/common/pkg/libexec/cgi-bin/"
+	@$(INSTALL) -m 0755 $(SAPI_CGI_PATH) $(INSTALL_ROOT)/boot/common/pkg/libexec/cgi-bin/php
 
