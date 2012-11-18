$NetBSD$

--- ext/phar/Makefile.frag.orig	2012-10-16 10:05:41.026476544 +0000
+++ ext/phar/Makefile.frag
@@ -18,7 +18,7 @@ PHP_PHARCMD_EXECUTABLE = ` \
 	else \
 		$(top_srcdir)/build/shtool echo -n -- "$(PHP_EXECUTABLE)"; \
 	fi;`
-PHP_PHARCMD_BANG = `$(top_srcdir)/build/shtool echo -n -- "$(INSTALL_ROOT)$(bindir)/$(program_prefix)php$(program_suffix)$(EXEEXT)";`
+PHP_PHARCMD_BANG = `$(top_srcdir)/build/shtool echo -n -- "$(bindir)/$(program_prefix)php$(program_suffix)$(EXEEXT)";`
 
 $(builddir)/phar/phar.inc: $(srcdir)/phar/phar.inc
 	-@test -d $(builddir)/phar || mkdir $(builddir)/phar
@@ -39,4 +39,4 @@ install-pharcmd: pharcmd
 	-@$(mkinstalldirs) $(INSTALL_ROOT)$(bindir)
 	$(INSTALL) $(builddir)/phar.phar $(INSTALL_ROOT)$(bindir)
 	-@rm -f $(INSTALL_ROOT)$(bindir)/phar
-	$(LN_S) -f $(bindir)/phar.phar $(INSTALL_ROOT)$(bindir)/phar
+	$(LN_S) -f phar.phar $(INSTALL_ROOT)$(bindir)/phar
