# $NetBSD: options.mk,v 1.7 2012/04/13 10:38:26 hans Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.gcc46
PKG_SUPPORTED_OPTIONS=	nls gcc-inplace-math gcc-c++ gcc-fortran gcc-java gcc-objc #gcc-ada
PKG_SUGGESTED_OPTIONS=	gcc-c++ gcc-fortran gcc-objc
.if ${OPSYS} == "NetBSD"
PKG_SUGGESTED_OPTIONS+=	nls
.elif ${OPSYS} == "SunOS"
PKG_SUGGESTED_OPTIONS+=	gcc-inplace-math
.endif

PKG_OPTIONS_LEGACY_VARS+=	BUILD_CXX:gcc-c++
PKG_OPTIONS_LEGACY_VARS+=	BUILD_FORTRAN:gcc-fortran
PKG_OPTIONS_LEGACY_VARS+=	BUILD_JAVA:gcc-java
PKG_OPTIONS_LEGACY_VARS+=	BUILD_OBJC:gcc-objc

.include "../../mk/bsd.options.mk"

###
### Build math libraries in place
###
.if !empty(PKG_OPTIONS:Mgcc-inplace-math)
.include "../../devel/gmp/inplace.mk"
.include "../../math/mpcomplex/inplace.mk"
.include "../../math/mpfr/inplace.mk"
.else
CONFIGURE_ARGS+=	--with-gmp=${BUILDLINK_PREFIX.gmp}
CONFIGURE_ARGS+=	--with-mpc=${BUILDLINK_PREFIX.mpcomplex}
CONFIGURE_ARGS+=	--with-mpfr=${BUILDLINK_PREFIX.mpfr}
LIBS.SunOS+=		-lgmp
.include "../../devel/gmp/buildlink3.mk"
.include "../../math/mpcomplex/buildlink3.mk"
.include "../../math/mpfr/buildlink3.mk"
.endif

###
### Native Language Support
###
.if !empty(PKG_OPTIONS:Mnls)
USE_TOOLS+=		msgfmt
CONFIGURE_ARGS+=	--enable-nls
CONFIGURE_ARGS+=	--with-libiconv-prefix=${BUILDLINK_PREFIX.libiconv}
MAKE_ENV+=		ICONVPREFIX=${BUILDLINK_PREFIX.iconv}
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-nls
.endif

###
### Optional languages
### Ada could be added although there is a bootstrapping issue.  See
### ../gcc34-ada for guidance
###

LANGS=			c

.if !empty(PKG_OPTIONS:Mgcc-java)
.  if empty(PKG_OPTIONS:Mgcc-c++)
PKG_OPTIONS+=		gcc-c++
.  endif

LANGS+=			java
REPLACE_PYTHON=		libjava/contrib/aot-compile.in

USE_TOOLS+=		unzip zip:run
CONFIGURE_ARGS+=	--with-system-zlib

# ${WRKSRC}/gcc-4.6.1/libjava/contrib/aotcompile.py.in stores the path to
# a 'make' program so we need to make sure we give it the installed # 'make' and not
# the tool wrapped one.
CONFIGURE_ENV+=		PKGSRC_MAKE=${TOOLS_PATH.gmake}
MAKE_ENV+=		PKGSRC_MAKE=${TOOLS_PATH.gmake}

# fastjar-0.93 from pkgsrc/archivers/fastjar seems to trigger a build
# failure (seen on NetBSD-5.0/i386) when building java.  So in case
# the fastjar package is installed, make sure the configure script
# doesn't pick it up.
CONFIGURE_ENV+=		JAR=no
MAKE_ENV+=		JAR=no
MAKE_ENV+=		ac_cv_prog_JAR=no

.include "../../devel/zlib/buildlink3.mk"
.include "../../lang/python/application.mk"
.endif

.if !empty(PKG_OPTIONS:Mgcc-c++)
LANGS+=			c++
USE_TOOLS+=		perl
CONFIGURE_ARGS+=	--enable-__cxa_atexit
CONFIGURE_ARGS+=	--with-gxx-include-dir=${GCC_PREFIX}/include/c++/
.endif

.if !empty(PKG_OPTIONS:Mgcc-fortran)
LANGS+=			fortran
.endif

.if !empty(PKG_OPTIONS:Mgcc-objc)
LANGS+=			objc
.endif

#.if !empty(PKG_OPTIONS:Mgcc-ada)
#LANGS+=		ada
#.endif
