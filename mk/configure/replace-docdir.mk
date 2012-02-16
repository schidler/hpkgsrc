# $NetBSD: replace-docdir.mk,v 1.2 2006/08/03 16:49:48 salo Exp $

######################################################################
### replace-docdir (PRIVATE)
######################################################################
### replace-docdir replaces the path to the locale directory in
### various Makefiles with the one chosen by pkgsrc (PKGDOCDIR).
###
.PHONY: replace-docdir
replace-docdir:
	@${DO_NADA}

replace-docdir: subst-pkgdocdir
$DOC_DIR=`echo "${PKGNAME}" | awk -F"-" '{ print $1 }'`

_PKGDOCDIR=	${PREFIX}/${PKGDOCDIR}

REPLACE_DOCDIR_PATTERNS?=	# empty
_REPLACE_DOCDIR_PATTERNS=	${REPLACE_DOCDIR_PATTERNS}
.if defined(HAS_CONFIGURE)
_REPLACE_DOCDIR_PATTERNS+=	[Mm]akefile.in*
.else
_REPLACE_DOCDIR_PATTERNS+=	[Mm]akefile*
.endif
_REPLACE_DOCDIR_PATTERNS_FIND_cmd=					\
	cd ${WRKSRC} &&							\
	${ECHO} "__dummy-entry__" &&					\
	${FIND} . \( ${_REPLACE_DOCDIR_PATTERNS:C/.*/-o -name "&"/g:S/-o//1} \) -print | \
	${SED} -e 's|^\./||' |						\
	${SORT} -u

REPLACE_DOCDIR?=	# empty
_REPLACE_DOCDIR=	\
	${REPLACE_DOCDIR}						\
	${_REPLACE_DOCDIR_PATTERNS_FIND_cmd:sh:N__dummy-entry__:N*.orig}

.if empty(USE_PKGDOCDIR:M[nN][oO])
SUBST_CLASSES+=			pkgdocdir
.endif
SUBST_STAGE.pkgdocdir=	do-configure-pre-hook
SUBST_MESSAGE.pkgdocdir=	Fixing doc directory references .
SUBST_FILES.pkgdocdir=	${_REPLACE_DOCDIR}
SUBST_SED.pkgdocdir=		\
	-e 's|^\(docdir[ :]*=\).*/doc|\1 ${_PKGDOCDIR}|'		\
	-e 's|^\(itdocdir[ 	:]*=\).*/doc|\1 ${_PKGDOCDIR}|'		\
	-e 's|^\(gnudocdir[ 	:]*=\).*/doc|\1 ${_PKGDOCDIR}|'		\
	-e 's|\(-DDOCDIR[ 	]*=\)[^ 	]*\(\.\*\)|\1"\\"${_PKGDOCDIR}\\""\2|'
