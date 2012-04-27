$NetBSD$

--- src/gui/gui.pro.orig	2011-12-08 05:06:02.033816576 +0000
+++ src/gui/gui.pro
@@ -5,7 +5,7 @@ DEFINES   += QT_BUILD_GUI_LIB QT_NO_USIN
 win32-msvc*|win32-icc:QMAKE_LFLAGS += /BASE:0x65000000
 irix-cc*:QMAKE_CXXFLAGS += -no_prelink -ptused
 
-!win32:!embedded:!qpa:!mac:!symbian:CONFIG      += x11
+!win32:!embedded:!qpa:!mac:!symbian:!haiku:CONFIG      += x11
 
 unix|win32-g++*:QMAKE_PKGCONFIG_REQUIRES = QtCore
 
@@ -22,6 +22,7 @@ symbian {
     include(kernel/symbian.pri)
     include(s60framework/s60framework.pri)
 }
+haiku:include(kernel/haiku.pri)
 
 #modules
 include(animation/animation.pri)
@@ -69,7 +70,7 @@ neon:*-g++* {
     neon_compiler.commands = $$QMAKE_CXX -c
     neon_compiler.commands += $(CXXFLAGS) -mfpu=neon $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
     neon_compiler.dependency_type = TYPE_C
-    neon_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+    neon_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
     neon_compiler.input = DRAWHELPER_NEON_ASM_FILES NEON_SOURCES
     neon_compiler.variable_out = OBJECTS
     neon_compiler.name = compiling[neon] ${QMAKE_FILE_IN}
@@ -86,7 +87,7 @@ contains(QMAKE_MAC_XARCH, no) {
 } else {
     win32-g++*|!win32:!win32-icc*:!macx-icc* {
         mmx {
-            mmx_compiler.commands = $$QMAKE_CXX -c -Winline
+            mmx_compiler.commands = ${LIBTOOL} --mode=compile $$QMAKE_CXX -c -Winline
 
             mac {
                 mmx_compiler.commands += -Xarch_i386 -mmmx
@@ -97,7 +98,7 @@ contains(QMAKE_MAC_XARCH, no) {
 
             mmx_compiler.commands += $(CXXFLAGS) $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
             mmx_compiler.dependency_type = TYPE_C
-            mmx_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+            mmx_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
             mmx_compiler.input = MMX_SOURCES
             mmx_compiler.variable_out = OBJECTS
             mmx_compiler.name = compiling[mmx] ${QMAKE_FILE_IN}
@@ -105,7 +106,7 @@ contains(QMAKE_MAC_XARCH, no) {
             QMAKE_EXTRA_COMPILERS += mmx_compiler
         }
         3dnow {
-            mmx3dnow_compiler.commands = $$QMAKE_CXX -c -Winline
+            mmx3dnow_compiler.commands = ${LIBTOOL} --mode=compile $$QMAKE_CXX -c -Winline
 
             mac {
                 mmx3dnow_compiler.commands += -Xarch_i386 -m3dnow -Xarch_i386 -mmmx
@@ -116,14 +117,14 @@ contains(QMAKE_MAC_XARCH, no) {
 
             mmx3dnow_compiler.commands += $(CXXFLAGS) $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
             mmx3dnow_compiler.dependency_type = TYPE_C
-            mmx3dnow_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+            mmx3dnow_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
             mmx3dnow_compiler.input = MMX3DNOW_SOURCES
             mmx3dnow_compiler.variable_out = OBJECTS
             mmx3dnow_compiler.name = compiling[mmx3dnow] ${QMAKE_FILE_IN}
             silent:mmx3dnow_compiler.commands = @echo compiling[mmx3dnow] ${QMAKE_FILE_IN} && $$mmx3dnow_compiler.commands
             QMAKE_EXTRA_COMPILERS += mmx3dnow_compiler
             sse {
-                sse3dnow_compiler.commands = $$QMAKE_CXX -c -Winline
+                sse3dnow_compiler.commands = ${LIBTOOL} --mode=compile $$QMAKE_CXX -c -Winline
 
                 mac {
                     sse3dnow_compiler.commands += -Xarch_i386 -m3dnow -Xarch_i386 -msse
@@ -134,7 +135,7 @@ contains(QMAKE_MAC_XARCH, no) {
 
                 sse3dnow_compiler.commands += $(CXXFLAGS) $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
                 sse3dnow_compiler.dependency_type = TYPE_C
-                sse3dnow_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+                sse3dnow_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
                 sse3dnow_compiler.input = SSE3DNOW_SOURCES
                 sse3dnow_compiler.variable_out = OBJECTS
                 sse3dnow_compiler.name = compiling[sse3dnow] ${QMAKE_FILE_IN}
@@ -143,7 +144,7 @@ contains(QMAKE_MAC_XARCH, no) {
             }
         }
         sse {
-            sse_compiler.commands = $$QMAKE_CXX -c -Winline
+            sse_compiler.commands = ${LIBTOOL} --mode=compile $$QMAKE_CXX -c -Winline
 
             mac {
                 sse_compiler.commands += -Xarch_i386 -msse
@@ -154,7 +155,7 @@ contains(QMAKE_MAC_XARCH, no) {
 
             sse_compiler.commands += $(CXXFLAGS) $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
             sse_compiler.dependency_type = TYPE_C
-            sse_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+            sse_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
             sse_compiler.input = SSE_SOURCES
             sse_compiler.variable_out = OBJECTS
             sse_compiler.name = compiling[sse] ${QMAKE_FILE_IN}
@@ -162,7 +163,7 @@ contains(QMAKE_MAC_XARCH, no) {
             QMAKE_EXTRA_COMPILERS += sse_compiler
         }
         sse2 {
-            sse2_compiler.commands = $$QMAKE_CXX -c -Winline
+            sse2_compiler.commands = ${LIBTOOL} --mode=compile $$QMAKE_CXX -c -Winline
 
             mac {
                 sse2_compiler.commands += -Xarch_i386 -msse2
@@ -173,7 +174,7 @@ contains(QMAKE_MAC_XARCH, no) {
 
             sse2_compiler.commands += $(CXXFLAGS) $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
             sse2_compiler.dependency_type = TYPE_C
-            sse2_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+            sse2_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
             sse2_compiler.input = SSE2_SOURCES
             sse2_compiler.variable_out = OBJECTS
             sse2_compiler.name = compiling[sse2] ${QMAKE_FILE_IN}
@@ -181,7 +182,7 @@ contains(QMAKE_MAC_XARCH, no) {
             QMAKE_EXTRA_COMPILERS += sse2_compiler
         }
         ssse3 {
-            ssse3_compiler.commands = $$QMAKE_CXX -c -Winline
+            ssse3_compiler.commands = ${LIBTOOL} --mode=compile $$QMAKE_CXX -c -Winline
 
             mac {
                 ssse3_compiler.commands += -Xarch_i386 -mssse3
@@ -192,7 +193,7 @@ contains(QMAKE_MAC_XARCH, no) {
 
             ssse3_compiler.commands += $(CXXFLAGS) $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
             ssse3_compiler.dependency_type = TYPE_C
-            ssse3_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+            ssse3_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
             ssse3_compiler.input = SSSE3_SOURCES
             ssse3_compiler.variable_out = OBJECTS
             ssse3_compiler.name = compiling[ssse3] ${QMAKE_FILE_IN}
@@ -200,11 +201,11 @@ contains(QMAKE_MAC_XARCH, no) {
             QMAKE_EXTRA_COMPILERS += ssse3_compiler
         }
         iwmmxt {
-            iwmmxt_compiler.commands = $$QMAKE_CXX -c -Winline
+            iwmmxt_compiler.commands = ${LIBTOOL} --mode=compile $$QMAKE_CXX -c -Winline
             iwmmxt_compiler.commands += -mcpu=iwmmxt
             iwmmxt_compiler.commands += $(CXXFLAGS) $(INCPATH) ${QMAKE_FILE_IN} -o ${QMAKE_FILE_OUT}
             iwmmxt_compiler.dependency_type = TYPE_C
-            iwmmxt_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
+            iwmmxt_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}.lo
             iwmmxt_compiler.input = IWMMXT_SOURCES
             iwmmxt_compiler.variable_out = OBJECTS
             iwmmxt_compiler.name = compiling[iwmmxt] ${QMAKE_FILE_IN}