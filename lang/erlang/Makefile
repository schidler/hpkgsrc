# $NetBSD: Makefile,v 1.52 2012/10/02 20:11:38 asau Exp $

DISTNAME=		otp_src_${DIST_VERSION_MAJOR}${DIST_VERSION_MINOR:D-${DIST_VERSION_MINOR}}
PKGNAME=		erlang-${ERLANG_VERSION}
PKGREVISION=		1
CATEGORIES=		lang
MASTER_SITES=		http://www.erlang.org/download/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.erlang.org/
COMMENT=		Concurrent functional programming language
LICENSE=		erlang-public-license

DIST_SUBDIR=		erlang

MAKE_JOBS_SAFE=		no

GNU_CONFIGURE=		yes
USE_GNU_CONFIGURE_HOST=	${USE_CROSS_COMPILE}
OVERRIDE_DIRDEPTH=	4
USE_TOOLS+=		gmake perl:run flex

CONFIGURE_ARGS+=	--with-ssl=${BUILDLINK_PREFIX.openssl}

PTHREAD_OPTS+=		require native
CONFIGURE_ARGS+=	--enable-threads

MAKE_ENV+=		DESTDIR=${DESTDIR}

REPLACE_INTERPRETER+=	escript
REPLACE.escript.old=	.*escript
REPLACE.escript.new=	${LOCALBASE}/bin/escript
REPLACE_FILES.escript=	\
	lib/reltool/examples/display_args \
	lib/reltool/examples/mnesia_core_dump_viewer \
	lib/snmp/src/compile/snmpc.src \
	lib/erl_docgen/priv/bin/codeline_preprocessing.escript \
	lib/erl_docgen/priv/bin/xml_from_edoc.escript \
	lib/snmp/bin/snmpc \
	lib/diameter/bin/diameterc

SUBST_CLASSES+=		target
SUBST_STAGE.target=	post-patch
SUBST_FILES.target=	make/target.mk
SUBST_SED.target=	-e "s|=.*config.guess)|= ${MACHINE_GNU_PLATFORM}|"
SUBST_MESSAGE.target=	Fixing target name.

TEST_TARGET=		tests
TEST_MAKE_FLAGS=	ERL_TOP=${WRKSRC}
REPLACE_PERL+=		make/make_emakefile

PLIST_SRC=		PLIST

.include "../../mk/bsd.prefs.mk"

.if exists(${.CURDIR}/PLIST.${OPSYS})
PLIST_SRC+=	${.CURDIR}/PLIST.${OPSYS}
.endif

.if ${OPSYS} == "DragonFly"
CONFIGURE_ARGS+=	--disable-sctp
.endif
###
### XXX There may be others here.
###
.if ${OPSYS} == "NetBSD" || ${OPSYS} == "OpenBSD"
CONFIGURE_ARGS+=	--enable-kernel-poll
.endif

.include "options.mk"

.include "Makefile.versions"

###
### Ensure this gets rebuilt.
###
pre-build:
	${RUN} ${RM} -f ${WRKSRC}/lib/stdlib/ebin/dets_v9.beam

post-install:
	chmod -R go-w ${DESTDIR}${PREFIX}/lib/erlang/lib

.include "../../security/openssl/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
