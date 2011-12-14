$NetBSD$

--- config/Haiku.mk.orig	2011-11-29 18:23:24.813170688 +0000
+++ config/Haiku.mk
@@ -52,6 +52,7 @@ CFLAGS +=  -Wall -Wno-format
 #endif
 
 RANLIB = echo
+NO_LIBM = 1
 
 #.c.o:
 #	$(CC) -c -MD $*.d $(CFLAGS) $<
@@ -60,7 +61,7 @@ CPU_ARCH = x86_64
 GFX_ARCH = x
 
 OS_CFLAGS = -DXP_UNIX -DSYSV -DSOLARIS -DHAVE_LOCALTIME_R
-OS_LIBS = -lsocket -lnsl -ldl
+OS_LIBS = -lnetwork -lroot
 
 #ASFLAGS	        += -P -L -K PIC -D_ASM -D__STDC__=0
 ASFLAGS += -x assembler-with-cpp
