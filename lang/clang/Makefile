# $NetBSD: Makefile,v 1.14 2012/10/02 20:11:37 asau Exp $

DISTNAME=	clang-3.1
PKGREVISION=	1
CATEGORIES=	lang
MASTER_SITES=	http://llvm.org/releases/${PKGVERSION_NOREV}/
DISTFILES=	llvm-${PKGVERSION_NOREV}.src.tar.gz \
		clang-${PKGVERSION_NOREV}.src.tar.gz

MAINTAINER=	adam.hoka@gmail.com
HOMEPAGE=	http://llvm.org/
COMMENT=	Low Level Virtual Machine compiler infrastructure
LICENSE=	modified-bsd

WRKSRC=			${WRKDIR}/llvm-${PKGVERSION_NOREV}.src

USE_LANGUAGES=		c c++
USE_TOOLS+=		chown gmake perl pod2man pod2html groff

CONFIG_GUESS_OVERRIDE+= projects/sample/autoconf/config.guess
CONFIG_SUB_OVERRIDE+=   projects/sample/autoconf/config.sub

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-assertions
CONFIGURE_ARGS+=	--disable-bindings	# disable OCaml
CONFIGURE_ARGS+=	--disable-timestamps
CONFIGURE_ARGS+=	--enable-optimized
#CONFIGURE_ARGS+=	--enable-shared

REPLACE_PERL+= 		utils/UpdateCMakeLists.pl \
					tools/clang/tools/scan-build/*					
					
REPLACE_PYTHON+=	test/Scripts/* \
					tools/clang/tools/scan-view/scan-view \
					tools/clang/utils/C++Tests/LLVM-Code-Symbols/check-symbols \
					tools/clang/utils/CaptureCmd \
					tools/clang/utils/* \
					tools/clang/utils/analyzer/ubiviz \
					tools/clang/utils/*/*.py \
					tools/clang/www/builtins.py \
					utils/Misc/zkill \
					utils/Target/ARM/analyze-match-table.py \
					utils/clang-parse-diagnostics-file \
					utils/lit/lit.py \
					utils/lit/lit/*.py \
					utils/llvm-build/llvm-build \
					utils/llvm-lit/llvm-lit.in \
					utils/release/*.py

REPLACE_BASH+=		utils/release/test-release.sh

MAKE_DIRS+=		etc/llvm

SUBST_CLASSES+=		path
SUBST_STAGE.path=	pre-configure
SUBST_FILES.path=	configure
SUBST_SED.path=		-e "s|${prefix}/man|${PKGMANDIR}|"
SUBST_MESSAGE.path=	Fixing path to manpages.

INSTALLATION_DIRS=	bin lib libexec

CHECK_PORTABILITY_SKIP=	utils/buildit/build_llvm

TEST_TARGET=	check unittests

.include "../../mk/bsd.prefs.mk"

.if ${_OPSYS_SHLIB_TYPE} == "dylib"
PLIST_SUBST+=		SOEXT="dylib"
.else
PLIST_SUBST+=		SOEXT="so"
.endif

post-extract:
	mv ${WRKDIR}/clang-${PKGVERSION_NOREV}.src ${WRKSRC}/tools/clang

.include "../../lang/python/application.mk"
.include "../../lang/python/tool.mk"
.include "../../mk/bsd.pkg.mk"
