# $NetBSD: replace-datadir.mk,v 1.2 2006/08/03 16:49:48 salo Exp $

######################################################################
### replace-datadir (PRIVATE)
######################################################################
### replace-datadir replaces the path to the locale directory in
### various Makefiles with the one chosen by pkgsrc (PKGDATADIR).
###
.PHONY: replace-datadir
replace-datadir:
	@${DO_NADA}

replace-datadir: subst-pkgdatadir

_PKGDATADIR=	${PREFIX}/${PKGDATADIR}

REPLACE_DATADIR_PATTERNS?=	# empty
_REPLACE_DATADIR_PATTERNS=	${REPLACE_DATADIR_PATTERNS}
.if defined(HAS_CONFIGURE)
_REPLACE_DATADIR_PATTERNS+=	[Mm]akefile.in*
.else
_REPLACE_DATADIR_PATTERNS+=	[Mm]akefile*
.endif
_REPLACE_DATADIR_PATTERNS_FIND_cmd=					\
	cd ${WRKSRC} &&							\
	${ECHO} "__dummy-entry__" &&					\
	${FIND} . \( ${_REPLACE_DATADIR_PATTERNS:C/.*/-o -name "&"/g:S/-o//1} \) -print | \
	${SED} -e 's|^\./||' |						\
	${SORT} -u

REPLACE_DATADIR?=	# empty
_REPLACE_DATADIR=	\
	${REPLACE_DATADIR}						\
	${_REPLACE_DATADIR_PATTERNS_FIND_cmd:sh:N__dummy-entry__:N*.orig}

.if empty(USE_PKGDATADIR:M[nN][oO])
SUBST_CLASSES+=			pkgdatadir
.endif
SUBST_STAGE.pkgdatadir=	do-configure-pre-hook
SUBST_MESSAGE.pkgdatadir=	Fixing data directory references.
SUBST_FILES.pkgdatadir=	${_REPLACE_DATADIR}
SUBST_SED.pkgdatadir=		\
	-e 's|^\(datadir[ 	:]*=\).*|\1 ${_PKGDATADIR}|'		\
	-e 's|^\(itdatadir[ 	:]*=\).*|\1 ${_PKGDATADIR}|'		\
	-e 's|^\(gnudatadir[ 	:]*=\).*|\1 ${_PKGDATADIR}|'		\
	-e 's|\(-DDATADIR[ 	]*=\)[^ 	]*\(\.\*\)|\1"\\"${_PKGDATADIR}\\""\2|'
