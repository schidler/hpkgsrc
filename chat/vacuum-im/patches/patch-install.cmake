$NetBSD$

--- install.cmake.orig	2011-08-08 08:59:38.008650752 +0000
+++ install.cmake
@@ -7,14 +7,6 @@ if (WIN32)
 	set(INSTALL_DOCUMENTS ".")
 	set(INSTALL_TRANSLATIONS "${INSTALL_RES_DIR}/translations")
 	set(INSTALL_INCLUDES "sdk")
-elseif (HAIKU)
-	set(INSTALL_BINS "${INSTALL_APP_DIR}")
-	set(INSTALL_LIBS "${INSTALL_LIB_DIR}")
-	set(INSTALL_PLUGINS "${INSTALL_APP_DIR}/plugins")
-	set(INSTALL_RESOURCES "${INSTALL_APP_DIR}/resources")
-	set(INSTALL_DOCUMENTS "${INSTALL_APP_DIR}/doc")
-	set(INSTALL_TRANSLATIONS "${INSTALL_APP_DIR}/translations")
-	set(INSTALL_INCLUDES "${INSTALL_APP_DIR}/sdk")
 elseif (APPLE)
 	set(INSTALL_BINS ".")
 	set(INSTALL_LIBS "${INSTALL_APP_DIR}/Contents/${INSTALL_LIB_DIR}")
