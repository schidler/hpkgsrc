$NetBSD$

--- libtool.m4.orig	2011-11-20 21:24:07.022282240 +0000
+++ libtool.m4
@@ -1709,7 +1709,7 @@ else
   lt_cv_dlopen_libs=
 
   case $host_os in
-  beos*)
+  beos* | haiku*)
     lt_cv_dlopen="load_add_on"
     lt_cv_dlopen_libs=
     lt_cv_dlopen_self=yes
@@ -2329,7 +2329,7 @@ haiku*)
   soname_spec='${libname}${release}${shared_ext}$major'
   shlibpath_var=LIBRARY_PATH
   shlibpath_overrides_runpath=yes
-  sys_lib_dlsearch_path_spec='/boot/home/config/lib /boot/common/lib /boot/beos/system/lib'
+  sys_lib_dlsearch_path_spec='/boot/home/config/lib /boot/system/lib'
   hardcode_into_libs=yes
   ;;
 
@@ -2978,7 +2978,7 @@ aix[[4-9]]*)
   lt_cv_deplibs_check_method=pass_all
   ;;
 
-beos*)
+beos* | haiku*)
   lt_cv_deplibs_check_method=pass_all
   ;;
 
