# $NetBSD: Makefile,v 1.36 2011/10/11 12:01:25 adam Exp $

.include "../../devel/scmgit/Makefile.common"

PKGNAME=	scmgit-base-${GIT_VERSION}
COMMENT=	GIT Tree History Storage Tool (base package)

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=		git<4.9.5nb1		# misc/git

DEPENDS+=		p5-Error>=0.17015:../../devel/p5-Error

USE_LANGUAGES=		c99
USE_TOOLS+=		perl:run sh:run msgfmt

PERL5_CONFIGURE=	no
PERL5_PACKLIST=		auto/Git/.packlist
REPLACE_PERL+=		*.perl */*.perl */*/*.perl
REPLACE_PERL+=		contrib/hooks/update-paranoid

USE_PKGDATADIR=		yes
CFLAGS.NetBSD+=		-D_NETBSD_SOURCE

LDFLAGS.Haiku+=		-L${PREFIX}/lib -lroot -lnetwork -lbsd -lcharset -lssl -lcrypto -lz
.if ${OPSYS}=="Haiku"
CONFIGURE_ARGS+=	--datarootdir=${PREFIX}/data
CONFIGURE_ENV+=		ac_cv_lib_c_socket=yes ac_cv_lib_c_basename=yes git_cv_ld_dashr=no
.endif
CONFIGURE_ARGS+=	--with-curl=${BUILDLINK_PREFIX.curl}
CONFIGURE_ARGS+=	--with-expat=${BUILDLINK_PREFIX.expat}
CONFIGURE_ARGS+=	--with-iconv=${BUILDLINK_PREFIX.iconv}
CONFIGURE_ARGS+=	--with-openssl=${SSLBASE}
CONFIGURE_ARGS+=	--with-zlib=${BUILDLINK_PREFIX.zlib}

BUILD_TARGET=		all

REPLACE_SH+=		contrib/hooks/post-receive-email
REPLACE_SH+=		contrib/hooks/pre-auto-gc-battery

.if ${OPSYS} == "Haiku"
EGDIR=			${PREFIX}/documentation/examples/scmgit
.else
EGDIR=			${PREFIX}/share/examples/scmgit
.endif

GIT_COREDIR=		git-core
GIT_TEMPLATEDIR=	templates

GIT_TEMPLATES=		description info/exclude
GIT_TEMPLATES+=		hooks/applypatch-msg.sample hooks/commit-msg.sample
GIT_TEMPLATES+=		hooks/post-update.sample hooks/pre-applypatch.sample
GIT_TEMPLATES+=		hooks/pre-commit.sample hooks/pre-rebase.sample
GIT_TEMPLATES+=		hooks/prepare-commit-msg.sample hooks/update.sample

# XXX unused as of now
#GIT_CORE_EXECDIR=	libexec/${GIT_COREDIR}
.if ${OPSYS} != "Haiku"
GIT_CORE_DATADIR=	share/${GIT_COREDIR}
.else
GIT_CORE_DATADIR=	data/${GIT_COREDIR}
.endif
GIT_CORE_TEMPLATEDIR=	${GIT_CORE_DATADIR}/${GIT_TEMPLATEDIR}

MAKE_DIRS=		${GIT_CORE_TEMPLATEDIR}
MAKE_DIRS+=		${GIT_CORE_TEMPLATEDIR}/hooks
MAKE_DIRS+=		${GIT_CORE_TEMPLATEDIR}/info

REQD_FILES+=		${GIT_TEMPLATES:@.t.@\
				${EGDIR}/${GIT_TEMPLATEDIR}/${.t.}\
				${PREFIX}/${GIT_CORE_TEMPLATEDIR}/${.t.}\
			@:M*}

CONFIGURE_ENV+=		HOME=${PREFIX}
CONFIGURE_ENV+=		gitexecdir=${GITCOREDIR}

MAKE_FLAGS+=		INSTALL=${INSTALL:Q}

GIT_TEMPLATE_INSTDIR=	${EGDIR}/${GIT_TEMPLATEDIR}
MAKE_ENV+=		GIT_TEMPLATE_INSTDIR=${GIT_TEMPLATE_INSTDIR}
MESSAGE_SUBST+=		GIT_TEMPLATE_INSTDIR=${GIT_TEMPLATE_INSTDIR}

SUBST_CLASSES+=		fix-paths
SUBST_FILES.fix-paths=	templates/hooks--post-receive.sample
SUBST_MESSAGE.fix-paths=Fixing hard-coded pathnames
SUBST_STAGE.fix-paths=	pre-build
SUBST_VARS.fix-paths=	PREFIX

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD" || ${OPSYS} == "SunOS" || ${OPSYS} == "OSF1" || ${OPSYS} == "HPUX" || ${OPSYS} == "QNX" || ${OPSYS} == "UnixWare"
SUBST_CLASSES+=		fix-cd-P
SUBST_FILES.fix-cd-P=	git-sh-setup.sh
SUBST_FILES.fix-cd-P+=	t/test-lib.sh
SUBST_MESSAGE.fix-cd-P=	Fixing cd arguments.
SUBST_STAGE.fix-cd-P=	pre-build
SUBST_SED.fix-cd-P=	-e "s/cd -P/cd/g"
.endif

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
