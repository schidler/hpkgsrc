# $NetBSD: Makefile,v 1.107 2012/10/08 15:18:22 jaapb Exp $

DISTNAME=	graphviz-2.26.3
PKGREVISION=	18
CATEGORIES=	graphics
MASTER_SITES=	http://www.graphviz.org/pub/graphviz/stable/SOURCES/

MAINTAINER=	sno@NetBSD.org
HOMEPAGE=	http://www.graphviz.org/
COMMENT=	Graph Drawing Programs from AT&T Research and Lucent Bell Labs
LICENSE=	cpl-1.0

PKG_INSTALLATION_TYPES=	overwrite pkgviews

CHECK_FILES_SKIP+=	${PREFIX}/lib/graphviz/config6

PRIVILEGED_STAGES+=	clean

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		bison pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-java
CONFIGURE_ARGS+=	--disable-php
CONFIGURE_ARGS+=	--disable-python
CONFIGURE_ARGS+=	--disable-ruby
CONFIGURE_ARGS+=	--disable-sharp
# build fails when PHP and/or Ruby are also installed
CONFIGURE_ENV+=		ac_cv_prog_PHP=
CONFIGURE_ENV+=		ac_cv_prog_RUBY=
CPPFLAGS+=		-DNO_POSTSCRIPT_ALIAS=1
PKGCONFIG_OVERRIDE+=	lib/cdt/libcdt.pc.in
PKGCONFIG_OVERRIDE+=	lib/cgraph/libcgraph.pc.in
PKGCONFIG_OVERRIDE+=	lib/expr/libexpr.pc.in
PKGCONFIG_OVERRIDE+=	lib/graph/libgraph.pc.in
PKGCONFIG_OVERRIDE+=	lib/gvc/libgvc.pc.in
PKGCONFIG_OVERRIDE+=	lib/gvpr/libgvpr.pc.in
PKGCONFIG_OVERRIDE+=	lib/pathplan/libpathplan.pc.in
PKGCONFIG_OVERRIDE+=	lib/xdot/libxdot.pc.in
XAW_TYPE=		standard

REPLACE_INTERPRETER+=	lua
REPLACE.lua.old=	.*lua
REPLACE.lua.new=	${PREFIX}/bin/lua
REPLACE_FILES.lua=	tclpkg/gv/demo/modgraph.lua

REPLACE_INTERPRETER+=	tclsh
REPLACE.tclsh.old=	.*tclsh
REPLACE.tclsh.new=	${PREFIX}/bin/tclsh
REPLACE_FILES.tclsh=	tclpkg/gv/demo/modgraph.tcl

REPLACE_PERL+=		config/config_perl.pl lib/gd/configure.pl \
			tclpkg/gv/demo/modgraph.pl contrib/dotmcl.pl \
			contrib/dirgraph/dirgraph.pl

.include "../../mk/bsd.prefs.mk"

.include "../../mk/compiler.mk"
.if !empty(CC_VERSION:Mgcc-2*)
BUILDLINK_TRANSFORM+=	rm:-Wno-unused-parameter
.endif

# Prevent another config.status run.
pre-build:
	touch ${WRKSRC}/Makefile

# Remove temporary files and directories created by re-linking "libgv_lua.la".
post-install:
	${RM} -rf ${DESTDIR}${PREFIX}/lib/graphviz/lua/gv.so \
	  ${DESTDIR}${PREFIX}/lib/graphviz/tcl/tcl \
	  ${DESTDIR}${PREFIX}/lib/lua/5.1/gv.so

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
#.include "../../devel/libltdl/convenience.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
#.include "../../mk/jpeg.buildlink3.mk"
#.include "../../graphics/png/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
