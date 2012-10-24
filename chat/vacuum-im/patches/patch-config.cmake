$NetBSD$

--- config.cmake.orig	2012-07-07 16:23:12.037748736 +0000
+++ config.cmake
@@ -11,9 +11,9 @@ if (APPLE)
 	set(INSTALL_LIB_DIR "Frameworks")
 	set(INSTALL_RES_DIR "Resources")
 elseif (HAIKU)
-	set(INSTALL_APP_DIR "Vacuum")
-	set(INSTALL_LIB_DIR "${INSTALL_APP_DIR}/lib")
-	set(INSTALL_RES_DIR "${INSTALL_APP_DIR}")
+	set(INSTALL_APP_DIR "vacuum")
+	set(INSTALL_LIB_DIR "lib")
+	set(INSTALL_RES_DIR "data")
 elseif (UNIX)
 	set(INSTALL_APP_DIR "vacuum")
 	set(INSTALL_LIB_DIR "lib" CACHE STRING "Name of directory for shared libraries on target system")
@@ -34,10 +34,6 @@ elseif (APPLE)
 	set(PLUGINS_DIR "../PlugIns")
 	set(RESOURCES_DIR "../${INSTALL_RES_DIR}")
 	set(TRANSLATIONS_DIR "./${INSTALL_RES_DIR}/translations")
-elseif (HAIKU)
-	set(PLUGINS_DIR "./plugins")
-	set(RESOURCES_DIR "./resources")
-	set(TRANSLATIONS_DIR "./translations")
 elseif (UNIX)
 	set(PLUGINS_DIR "../${INSTALL_LIB_DIR}/${INSTALL_APP_DIR}/plugins")
 	set(RESOURCES_DIR "../${INSTALL_RES_DIR}/${INSTALL_APP_DIR}/resources")