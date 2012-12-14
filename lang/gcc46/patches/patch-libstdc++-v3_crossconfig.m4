$NetBSD$

--- libstdc++-v3/crossconfig.m4.orig	2011-02-04 07:26:57.052428800 +0000
+++ libstdc++-v3/crossconfig.m4
@@ -99,6 +99,46 @@ case "${host}" in
       AC_DEFINE(HAVE_ISNANL)
     fi
     ;;
+  *-haiku*)
+    AC_CHECK_HEADERS([nan.h ieeefp.h endian.h sys/isa_defs.h \
+      machine/endian.h machine/param.h sys/machine.h sys/types.h \
+      fp.h float.h endian.h inttypes.h locale.h float.h stdint.h])
+    SECTION_FLAGS='-ffunction-sections -fdata-sections'
+    AC_SUBST(SECTION_FLAGS)
+
+    AC_DEFINE(HAVE_INT64_T)
+
+    AC_DEFINE(HAVE_ACOSF)
+    AC_DEFINE(HAVE_ASINF)
+    AC_DEFINE(HAVE_ATANF)
+    AC_DEFINE(HAVE_ATAN2F)
+    AC_DEFINE(HAVE_CEILF)
+    AC_DEFINE(HAVE_COPYSIGN)
+    AC_DEFINE(HAVE_COPYSIGNF)
+    AC_DEFINE(HAVE_COSF)
+    AC_DEFINE(HAVE_COSHF)
+    AC_DEFINE(HAVE_EXPF)
+    AC_DEFINE(HAVE_FABSF)
+    AC_DEFINE(HAVE_FINITE)
+    AC_DEFINE(HAVE_FINITEF)
+    AC_DEFINE(HAVE_FLOORF)
+    AC_DEFINE(HAVE_FMODF)
+    AC_DEFINE(HAVE_FREXPF)
+    AC_DEFINE(HAVE_HYPOT)
+    AC_DEFINE(HAVE_HYPOTF)
+    AC_DEFINE(HAVE_ISINF)
+    AC_DEFINE(HAVE_ISINFF)
+    AC_DEFINE(HAVE_ISNAN)
+    AC_DEFINE(HAVE_ISNANF)
+    AC_DEFINE(HAVE_LOGF)
+    AC_DEFINE(HAVE_LOG10F)
+    AC_DEFINE(HAVE_MODFF)
+    AC_DEFINE(HAVE_SINF)
+    AC_DEFINE(HAVE_SINHF)
+    AC_DEFINE(HAVE_SQRTF)
+    AC_DEFINE(HAVE_TANF)
+    AC_DEFINE(HAVE_TANHF)
+    ;;
   *-hpux*)
     SECTION_FLAGS='-ffunction-sections -fdata-sections'
     AC_SUBST(SECTION_FLAGS)
