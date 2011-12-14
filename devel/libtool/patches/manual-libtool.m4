$NetBSD: manual-libtool.m4,v 1.32 2011/05/14 16:49:45 bsiegert Exp $

--- libltdl/m4/libtool.m4.orig	2009-11-16 13:11:59.000000000 +0000
+++ libltdl/m4/libtool.m4
@@ -118,7 +118,10 @@ m4_defun([_LT_CC_BASENAME],
     *) break;;
   esac
 done
-cc_basename=`$ECHO "X$cc_temp" | $Xsed -e 's%.*/%%' -e "s%^$host_alias-%%"`
+# Return the actual command name, not our pkgsrc wrapper name because several
+# decisions are made only based on compiler names
+if test -n "$cc_temp" && new_cc_temp=`$cc_temp --wrappee-name 2>/dev/null`; then :; else new_cc_temp="$cc_temp"; fi
+cc_basename=`$ECHO "X$new_cc_temp" | $Xsed -e 's%.*/%%' -e "s%^$host_alias-%%"`
 ])
 
 
@@ -1527,13 +1530,20 @@ AC_CACHE_VAL([lt_cv_sys_max_cmd_len], [d
     lt_cv_sys_max_cmd_len=8192;
     ;;
 
+  mint*)
+    # On MiNT we can support fairly large cmd lengths, but it takes
+    # a while to run the tests, so let's restrict it to something
+    # reasonable.
+    lt_cv_sys_max_cmd_len=8192;
+    ;;
+
   amigaos*)
     # On AmigaOS with pdksh, this test takes hours, literally.
     # So we just punt and use a minimum line length of 8192.
     lt_cv_sys_max_cmd_len=8192;
     ;;
 
-  netbsd* | freebsd* | openbsd* | darwin* | dragonfly*)
+  netbsd* | freebsd* | openbsd* | mirbsd* | darwin* | dragonfly*)
     # This has been around since 386BSD, at least.  Likely further.
     if test -x /sbin/sysctl; then
       lt_cv_sys_max_cmd_len=`/sbin/sysctl -n kern.argmax`
@@ -2189,6 +2199,7 @@ beos*)
 bsdi[[45]]*)
   version_type=linux
   need_version=no
+  need_lib_prefix=no
   library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major $libname${shared_ext}'
   soname_spec='${libname}${release}${shared_ext}$major'
   finish_cmds='PATH="\$PATH:/sbin" ldconfig $libdir'
@@ -2290,9 +2301,7 @@ freebsd1*)
   dynamic_linker=no
   ;;
 
-freebsd* | dragonfly*)
-  # DragonFly does not have aout.  When/if they implement a new
-  # versioning mechanism, adjust this.
+freebsd*)
   if test -x /usr/bin/objformat; then
     objformat=`/usr/bin/objformat`
   else
@@ -2304,7 +2313,7 @@ freebsd* | dragonfly*)
   version_type=freebsd-$objformat
   case $version_type in
     freebsd-elf*)
-      library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext} $libname${shared_ext}'
+      library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
       need_version=no
       need_lib_prefix=no
       ;;
@@ -2327,13 +2336,24 @@ freebsd* | dragonfly*)
     shlibpath_overrides_runpath=no
     hardcode_into_libs=yes
     ;;
-  *) # from 4.6 on, and DragonFly
+  *) # from 4.6 on
     shlibpath_overrides_runpath=yes
     hardcode_into_libs=yes
     ;;
   esac
   ;;
 
+dragonfly*)
+  version_type=linux
+  need_version=no
+  need_lib_prefix=no
+  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
+  soname_spec='${libname}${release}${shared_ext}$major'
+  shlibpath_var=LD_LIBRARY_PATH
+  shlibpath_overrides_runpath=no
+  hardcode_into_libs=yes
+  ;;
+
 gnu*)
   version_type=linux
   need_lib_prefix=no
@@ -2344,6 +2364,19 @@ gnu*)
   hardcode_into_libs=yes
   ;;
 
+haiku*)
+  version_type=linux
+  need_lib_prefix=no
+  need_version=no
+  dynamic_linker="$host_os runtime_loader"
+  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}${major} ${libname}${shared_ext}'
+  soname_spec='${libname}${release}${shared_ext}$major'
+  shlibpath_var=LIBRARY_PATH
+  shlibpath_overrides_runpath=yes
+  sys_lib_dlsearch_path_spec='/boot/home/config/lib /boot/common/lib /boot/system/lib'
+  hardcode_into_libs=yes
+  ;;
+
 hpux9* | hpux10* | hpux11*)
   # Give a soname corresponding to the major version so that dld.sl refuses to
   # link against other versions.
@@ -2405,12 +2438,7 @@ interix[[3-9]]*)
 irix5* | irix6* | nonstopux*)
   case $host_os in
     nonstopux*) version_type=nonstopux ;;
-    *)
-	if test "$lt_cv_prog_gnu_ld" = yes; then
-		version_type=linux
-	else
-		version_type=irix
-	fi ;;
+    *) version_type=irix ;;
   esac
   need_lib_prefix=no
   need_version=no
@@ -2485,16 +2513,38 @@ linux* | k*bsd*-gnu)
   dynamic_linker='GNU/Linux ld.so'
   ;;
 
+midnightbsd*)
+  version_type=linux
+  need_lib_prefix=no
+  need_version=no
+  library_names_spec='${libname}${release}${shared_ext}${versuffix2} ${libname}${release}${shared_ext} $libname${shared_ext}'
+  finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
+  shlibpath_var=LD_LIBRARY_PATH
+  shlibpath_overrides_runpath=yes
+  hardcode_into_libs=yes
+  ;;
+
+mirbsd*)
+  version_type=linux
+  sys_lib_search_path_spec="/usr/lib"
+  sys_lib_dlsearch_path_spec="/usr/lib"
+  need_lib_prefix=no
+  need_version=no
+  library_names_spec='${libname}${release}${shared_ext}${versuffix2} ${libname}${shared_ext}${versuffix2}'
+  finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
+  shlibpath_var=LD_LIBRARY_PATH
+  shlibpath_overrides_runpath=yes
+  ;;
+
 netbsd*)
-  version_type=sunos
+  version_type=linux
   need_lib_prefix=no
   need_version=no
-  if echo __ELF__ | $CC -E - | $GREP __ELF__ >/dev/null; then
-    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
+  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
+  if echo __ELF__ | $CC -E - | $GREP __ELF__ >/dev/null && echo __G95__ | $CC -cpp -E - | $GREP __G95__ >/dev/null; then
     finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
     dynamic_linker='NetBSD (a.out) ld.so'
   else
-    library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
     soname_spec='${libname}${release}${shared_ext}$major'
     dynamic_linker='NetBSD ld.elf_so'
   fi
@@ -2523,7 +2573,7 @@ newsos6)
   ;;
 
 openbsd*)
-  version_type=sunos
+  version_type=linux
   sys_lib_dlsearch_path_spec="/usr/lib"
   need_lib_prefix=no
   # Some older versions of OpenBSD (3.3 at least) *do* need versioned libs.
@@ -2531,7 +2581,7 @@ openbsd*)
     openbsd3.3 | openbsd3.3.*)	need_version=yes ;;
     *)				need_version=no  ;;
   esac
-  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${shared_ext}$versuffix'
+  library_names_spec='${libname}${release}${shared_ext}$versuffix ${libname}${release}${shared_ext}$major ${libname}${shared_ext}'
   finish_cmds='PATH="\$PATH:/sbin" ldconfig -m $libdir'
   shlibpath_var=LD_LIBRARY_PATH
   if test -z "`echo __ELF__ | $CC -E - | $GREP __ELF__`" || test "$host_os-$host_cpu" = "openbsd2.8-powerpc"; then
@@ -3038,6 +3088,10 @@ gnu*)
   lt_cv_deplibs_check_method=pass_all
   ;;
 
+haiku*)
+  lt_cv_deplibs_check_method=pass_all
+  ;;
+
 hpux10.20* | hpux11*)
   lt_cv_file_magic_cmd=/usr/bin/file
   case $host_cpu in
@@ -3076,6 +3130,17 @@ linux* | k*bsd*-gnu)
   lt_cv_deplibs_check_method=pass_all
   ;;
 
+midnightbsd*)
+  # might to use match_pattern like MirBSD, but there is no well-defined
+  # naming scheme for libraries yet, as the current one is deprecated, and
+  # the new one in a state of flux especially between mports and MirPorts
+  lt_cv_deplibs_check_method=pass_all
+  ;;
+
+mirbsd*)
+  lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so\.[[0-9]]+\.[[0-9]]+|\.so|_pic\.a)$'
+  ;;
+
 netbsd*)
   if echo __ELF__ | $CC -E - | $GREP __ELF__ > /dev/null; then
     lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so\.[[0-9]]+\.[[0-9]]+|_pic\.a)$'
@@ -3091,7 +3156,7 @@ newos6*)
   ;;
 
 *nto* | *qnx*)
-  lt_cv_deplibs_check_method=pass_all
+  lt_cv_deplibs_check_method='match_pattern /lib[[^/]]+(\.so|S\.a)$'
   ;;
 
 openbsd*)
@@ -3256,7 +3321,7 @@ AC_DEFUN([LT_LIB_M],
 [AC_REQUIRE([AC_CANONICAL_HOST])dnl
 LIBM=
 case $host in
-*-*-beos* | *-*-cygwin* | *-*-pw32* | *-*-darwin*)
+*-*-beos* | *-*-cygwin* | *-*-haiku* | *-*-pw32* | *-*-darwin*)
   # These system don't have libm, or don't need it
   ;;
 *-ncr-sysv4.3*)
@@ -3580,14 +3645,25 @@ m4_if([$1], [CXX], [
 	[_LT_TAGVAR(lt_prog_compiler_pic, $1)='-DDLL_EXPORT'])
       ;;
     darwin* | rhapsody*)
-      # PIC is the default on this platform
+      # PIC is the default on this platform, and static linking of
+      # binaries generally doesn't work
       # Common symbols not allowed in MH_DYLIB files
       _LT_TAGVAR(lt_prog_compiler_pic, $1)='-fno-common'
+      _LT_TAGVAR(lt_prog_compiler_static, $1)=''
+      ;;
+    *mint*)
+      # FreeMiNT does not support shared libraries at all
+      _LT_TAGVAR(lt_prog_compiler_pic, $1)=
       ;;
     *djgpp*)
       # DJGPP does not support shared libraries at all
       _LT_TAGVAR(lt_prog_compiler_pic, $1)=
       ;;
+    haiku*)
+      # PIC is the default for Haiku.
+      # The "-static" flag exists, but is broken.
+      _LT_TAGVAR(lt_prog_compiler_static, $1)=
+      ;;
     interix[[3-9]]*)
       # Interix 3.x gcc -fpic/-fPIC options generate broken code.
       # Instead, we relocate shared libraries at runtime.
@@ -3650,6 +3726,9 @@ m4_if([$1], [CXX], [
 	    ;;
 	esac
 	;;
+      mint*)
+	# FreeMiNT uses GNU C++
+	;;
       freebsd* | dragonfly*)
 	# FreeBSD uses GNU C++
 	;;
@@ -3888,9 +3967,17 @@ m4_if([$1], [CXX], [
       ;;
 
     darwin* | rhapsody*)
-      # PIC is the default on this platform
+      # PIC is the default on this platform, and static linking of
+      # binaries generally doesn't work
       # Common symbols not allowed in MH_DYLIB files
       _LT_TAGVAR(lt_prog_compiler_pic, $1)='-fno-common'
+      _LT_TAGVAR(lt_prog_compiler_static, $1)=''
+      ;;
+
+    haiku*)
+      # PIC is the default for Haiku.
+      # The "-static" flag exists, but is broken.
+      _LT_TAGVAR(lt_prog_compiler_static, $1)=
       ;;
 
     hpux*)
@@ -3912,6 +3999,13 @@ m4_if([$1], [CXX], [
       # Instead, we relocate shared libraries at runtime.
       ;;
 
+    mint*)
+      # Just because we use GCC doesn't mean we suddenly get shared libraries
+      # on systems that don't support them.
+      _LT_TAGVAR(lt_prog_compiler_can_build_shared, $1)=no
+      enable_shared=no
+      ;;
+
     msdosdjgpp*)
       # Just because we use GCC doesn't mean we suddenly get shared libraries
       # on systems that don't support them.
@@ -4110,6 +4204,9 @@ m4_if([$1], [CXX], [
 ])
 case $host_os in
   # For platforms which do not support PIC, -DPIC is meaningless:
+  mint*)
+    _LT_TAGVAR(lt_prog_compiler_pic, $1)=
+    ;;
   *djgpp*)
     _LT_TAGVAR(lt_prog_compiler_pic, $1)=
     ;;
@@ -4343,6 +4440,11 @@ _LT_EOF
       fi
       ;;
 
+    haiku*)
+      _LT_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
+      _LT_TAGVAR(link_all_deplibs, $1)=yes
+      ;;
+
     interix[[3-9]]*)
       _LT_TAGVAR(hardcode_direct, $1)=no
       _LT_TAGVAR(hardcode_shlibpath_var, $1)=no
@@ -4429,7 +4531,7 @@ _LT_EOF
       ;;
 
     netbsd*)
-      if echo __ELF__ | $CC -E - | $GREP __ELF__ >/dev/null; then
+      if echo __ELF__ | $CC -E - | grep __ELF__ >/dev/null && echo __G95__ | $CC -cpp -E - | grep __G95__ >/dev/null; then
 	_LT_TAGVAR(archive_cmds, $1)='$LD -Bshareable $libobjs $deplibs $linker_flags -o $lib'
 	wlarc=
       else
@@ -4735,6 +4837,11 @@ _LT_EOF
       _LT_TAGVAR(hardcode_shlibpath_var, $1)=no
       ;;
 
+      haiku*)
+        _LT_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
+        _LT_TAGVAR(link_all_deplibs, $1)=yes
+        ;;
+
     hpux9*)
       if test "$GCC" = yes; then
 	_LT_TAGVAR(archive_cmds, $1)='$RM $output_objdir/$soname~$CC -shared -fPIC ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $libobjs $deplibs $compiler_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib'
@@ -4841,6 +4948,20 @@ _LT_EOF
       _LT_TAGVAR(link_all_deplibs, $1)=yes
       ;;
 
+    mirbsd*)
+      if test -f /usr/libexec/ld.so; then
+	_LT_TAGVAR(hardcode_direct, $1)=yes
+	_LT_TAGVAR(hardcode_shlibpath_var, $1)=no
+	_LT_TAGVAR(hardcode_direct_absolute, $1)=yes
+	_LT_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag -o $lib $libobjs $deplibs $compiler_flags'
+	_LT_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $pic_flag -o $lib $libobjs $deplibs $compiler_flags ${wl}-retain-symbols-file,$export_symbols'
+	_LT_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
+	_LT_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
+      else
+	_LT_TAGVAR(ld_shlibs, $1)=no
+      fi
+      ;;
+
     netbsd*)
       if echo __ELF__ | $CC -E - | $GREP __ELF__ >/dev/null; then
 	_LT_TAGVAR(archive_cmds, $1)='$LD -Bshareable -o $lib $libobjs $deplibs $linker_flags'  # a.out
@@ -4861,6 +4982,8 @@ _LT_EOF
       ;;
 
     *nto* | *qnx*)
+      _LT_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
+      _LT_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
       ;;
 
     openbsd*)
@@ -5318,9 +5441,7 @@ m4_defun([_LT_PROG_CXX],
 [
 pushdef([AC_MSG_ERROR], [_lt_caught_CXX_error=yes])
 AC_PROG_CXX
-if test -n "$CXX" && ( test "X$CXX" != "Xno" &&
-    ( (test "X$CXX" = "Xg++" && `g++ -v >/dev/null 2>&1` ) ||
-    (test "X$CXX" != "Xg++"))) ; then
+if test -n "$CXX" && test "X$CXX" != "Xno" ; then
   AC_PROG_CXXCPP
 else
   _lt_caught_CXX_error=yes
@@ -5993,6 +6114,22 @@ if test "$_lt_caught_CXX_error" != yes; 
         _LT_TAGVAR(ld_shlibs, $1)=no
 	;;
 
+      mirbsd*)
+	if test -f /usr/libexec/ld.so; then
+	  _LT_TAGVAR(hardcode_direct, $1)=yes
+	  _LT_TAGVAR(hardcode_shlibpath_var, $1)=no
+	  _LT_TAGVAR(hardcode_direct_absolute, $1)=yes
+	  _LT_TAGVAR(archive_cmds, $1)='$CC -shared $pic_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $lib'
+	  _LT_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $pic_flag $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-retain-symbols-file,$export_symbols -o $lib'
+	  _LT_TAGVAR(hardcode_libdir_flag_spec, $1)='${wl}-rpath,$libdir'
+	  _LT_TAGVAR(export_dynamic_flag_spec, $1)='${wl}-E'
+	  _LT_TAGVAR(whole_archive_flag_spec, $1)="$wlarc"'--whole-archive$convenience '"$wlarc"'--no-whole-archive'
+	  output_verbose_link_cmd='echo'
+	else
+	  _LT_TAGVAR(ld_shlibs, $1)=no
+	fi
+	;;
+
       mvs*)
         case $cc_basename in
           cxx*)
@@ -6008,18 +6145,37 @@ if test "$_lt_caught_CXX_error" != yes; 
 
       netbsd*)
         if echo __ELF__ | $CC -E - | $GREP __ELF__ >/dev/null; then
+          # a.out is quite broken and goes directly to ld
 	  _LT_TAGVAR(archive_cmds, $1)='$LD -Bshareable  -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags'
 	  wlarc=
+          # Determine if we need to override the c++rt0 that is
+          # picked up by analysing output_verbose_link_cmds
+          if test -f ${PREFIX}/lib/c++rt0/c++rt0.o.PIC; then
+            cpprt0_file="${PREFIX}/lib/c++rt0/c++rt0.o.PIC"
+          else
+            cpprt0_file=
+          fi
 	  _LT_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
 	  _LT_TAGVAR(hardcode_direct, $1)=yes
 	  _LT_TAGVAR(hardcode_shlibpath_var, $1)=no
-	fi
-	# Workaround some broken pre-1.5 toolchains
-	output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | $GREP conftest.$objext | $SED -e "s:-lgcc -lc -lgcc::"'
+        elif $CC -dumpspecs | grep -- '-lgcc -lc -lgcc' >/dev/null; then
+          # Workaround some broken pre-1.5 ELF toolchains
+          output_verbose_link_cmd='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep conftest.$objext | $SED -e "s:-lgcc -lc -lgcc::"'
+        else
+          # Modern ELF works sanely as-is
+          _LT_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
+          _LT_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
+          output_verbose_link_cmd='echo'
+        fi
 	;;
 
       *nto* | *qnx*)
-        _LT_TAGVAR(ld_shlibs, $1)=yes
+        _LT_TAGVAR(archive_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname -o $lib'
+        _LT_TAGVAR(archive_expsym_cmds, $1)='$CC -shared $libobjs $deplibs $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'
+        _LT_TAGVAR(hardcode_libdir_flag_spec, $1)='-R$libdir'
+        _LT_TAGVAR(hardcode_direct, $1)=yes
+        _LT_TAGVAR(hardcode_shlibpath_var, $1)=no
+        output_verbose_link_cmd='echo'
 	;;
 
       openbsd2*)
@@ -6481,6 +6637,11 @@ $RM -f confest.$objext
 # PORTME: override above test on systems where it is broken
 m4_if([$1], [CXX],
 [case $host_os in
+netbsd*)
+  if test -n "$cpprt0_file"; then
+    _LT_TAGVAR(predep_objects,$1)=`eval echo $predep_objects_CXX | sed -e 's:/usr/lib/c++rt0.o:$cpprt0_file:'`
+  fi
+   ;;
 interix[[3-9]]*)
   # Interix 3.5 installs completely hosed .la files for C++, so rather than
   # hack all around it, let's just trust "g++" to DTRT.
