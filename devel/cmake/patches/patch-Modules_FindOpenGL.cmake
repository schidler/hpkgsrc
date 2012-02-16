$NetBSD$

--- Modules/FindOpenGL.cmake.orig	2011-10-04 16:09:24.008388608 +0000
+++ Modules/FindOpenGL.cmake
@@ -80,6 +80,7 @@ ELSE (WIN32)
       /usr/share/doc/NVIDIA_GLX-1.0/include
       /usr/openwin/share/include
       /opt/graphics/OpenGL/include /usr/X11R6/include
+	  /boot/develop/headers/os/opengl
     )
 
     FIND_PATH(OPENGL_xmesa_INCLUDE_DIR GL/xmesa.h
@@ -94,6 +95,7 @@ ELSE (WIN32)
             /usr/openwin/lib
             /usr/shlib /usr/X11R6/lib
             ${HPUX_IA_OPENGL_LIB_PATH}
+			/boot/develop/lib/x86/
     )
 
     # On Unix OpenGL most certainly always requires X11.
