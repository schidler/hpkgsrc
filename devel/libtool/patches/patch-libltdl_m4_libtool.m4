$NetBSD$

--- libltdl/m4/libtool.m4.orig	2011-10-17 10:17:05.000000000 +0000
+++ libltdl/m4/libtool.m4
@@ -2531,7 +2531,7 @@ haiku*)
   library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}${major} ${libname}${shared_ext}'
   soname_spec='${libname}${release}${shared_ext}$major'
   shlibpath_var=LIBRARY_PATH
-  shlibpath_overrides_runpath=yes
+  shlibpath_overrides_runpath=no
   sys_lib_dlsearch_path_spec='/boot/home/config/lib /boot/common/lib /boot/system/lib'
   hardcode_into_libs=yes
   ;;
