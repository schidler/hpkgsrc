--- hints/haiku.sh.orig	2010-12-30 07:07:16.049545216 +0500
+++ hints/haiku.sh	2012-02-14 12:19:09.463994880 +0600
--- hints/haiku.sh.orig	2010-12-30 02:07:16.030670848 +0000
+++ hints/haiku.sh
@@ -3,5 +3,7 @@
 
-prefix="/boot/common"
+#case "$prefix" in
+#'') prefix="/boot/common" ;;
+#esac
 
-libpth='/boot/home/config/lib /boot/common/lib /system/lib'
+libpth='/boot/home/config/lib /boot/common/lib /boot/system/lib'
 usrinc='/boot/develop/headers/posix'
@@ -9,3 +11,3 @@ locinc='/boot/home/config/include /boot/
 
-libc='/system/lib/libroot.so'
+libc='/boot/system/lib/libroot.so'
 libs='-lnetwork'
