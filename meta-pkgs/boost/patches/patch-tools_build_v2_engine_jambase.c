$NetBSD$

--- tools/build/v2/engine/jambase.c.orig	2011-06-06 20:36:21.060293120 +0000
+++ tools/build/v2/engine/jambase.c
@@ -548,6 +548,18 @@ char *jambase[] = {
 "NOARSCAN    ?= true ;\n",
 "STDHDRS     ?= /boot/develop/headers/posix ;\n",
 "}\n",
+"else if $(OS) = HAIKU\n",
+"{\n",
+"CC          ?= gcc ;\n",
+"C++         ?= $(CC) ;\n",
+"FORTRAN     ?= \"\" ;\n",
+"LIBDIR      ?= /boot/develop/lib/x86 ;\n",
+"LINK        ?= gcc ;\n",
+"LINKLIBS    ?= -lnetwork ;\n",
+"NOARSCAN    ?= true ;\n",
+"STDHDRS     ?= /boot/develop/headers/posix ;\n",
+"}\n",
+
 "else if $(OS) = BEOS\n",
 "{\n",
 "BINDIR      ?= /boot/apps ;\n",
