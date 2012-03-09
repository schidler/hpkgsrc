$NetBSD$

--- Modules/FindGLUT.cmake.orig	2011-10-04 16:09:24.036175872 +0000
+++ Modules/FindGLUT.cmake
@@ -50,15 +50,18 @@ ELSE (WIN32)
   
     FIND_LIBRARY( GLUT_glut_LIBRARY glut
       /usr/openwin/lib
+	  /boot/develop/lib/x86/
       )
     
-    FIND_LIBRARY( GLUT_Xi_LIBRARY Xi
+   IF(NOT BEOS AND NOT HAIKU)
+	FIND_LIBRARY( GLUT_Xi_LIBRARY Xi
       /usr/openwin/lib
       )
     
     FIND_LIBRARY( GLUT_Xmu_LIBRARY Xmu
       /usr/openwin/lib
       )
+	ENDIF(NOT BEOS AND NOT HAIKU)
     
   ENDIF (APPLE)
   
@@ -69,13 +72,19 @@ IF(GLUT_INCLUDE_DIR)
   IF(GLUT_glut_LIBRARY)
     # Is -lXi and -lXmu required on all platforms that have it?
     # If not, we need some way to figure out what platform we are on.
-    SET( GLUT_LIBRARIES
-      ${GLUT_glut_LIBRARY}
-      ${GLUT_Xmu_LIBRARY}
-      ${GLUT_Xi_LIBRARY} 
-      ${GLUT_cocoa_LIBRARY}
-      )
-    SET( GLUT_FOUND "YES" )
+   IF(BEOS OR HAIKU)
+      SET( GLUT_LIBRARIES
+        ${GLUT_glut_LIBRARY}
+        )
+    ELSE(BEOS OR HAIKU)
+		SET( GLUT_LIBRARIES
+		${GLUT_glut_LIBRARY}
+		${GLUT_Xmu_LIBRARY}
+		${GLUT_Xi_LIBRARY} 
+		${GLUT_cocoa_LIBRARY}
+		)
+    ENDIF(BEOS OR HAIKU)
+	SET( GLUT_FOUND "YES" )
     
     #The following deprecated settings are for backwards compatibility with CMake1.4
     SET (GLUT_LIBRARY ${GLUT_LIBRARIES})
@@ -84,9 +93,16 @@ IF(GLUT_INCLUDE_DIR)
   ENDIF(GLUT_glut_LIBRARY)
 ENDIF(GLUT_INCLUDE_DIR)
 
+IF(BEOS OR HAIKU)
+  MARK_AS_ADVANCED(
+    GLUT_INCLUDE_DIR
+    GLUT_glut_LIBRARY
+    )
+ELSE(BEOS OR HAIKU)
 MARK_AS_ADVANCED(
   GLUT_INCLUDE_DIR
   GLUT_glut_LIBRARY
   GLUT_Xmu_LIBRARY
   GLUT_Xi_LIBRARY
   )
+ENDIF(BEOS OR HAIKU)
