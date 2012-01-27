# $NetBSD: replace-examplesdir.mk,v 1.2 2006/08/03 16:49:48 salo Exp $

######################################################################
### replace-examples (PRIVATE)
######################################################################
### replace-examples replaces the path to the examples directory in
### various Makefiles with the one chosen by pkgsrc (PKGEXMPLDIR).
###
.PHONY: replace-examples
replace-examples:
	@${DO_NADA}

replace-examples: subst-pkgexamples

_PKGEXMPLDIR=	${PREFIX}/${PKGEXMPLDIR}/examples

REPLACE_EXMPLDIR_PATTERNS?=	# empty
_REPLACE_EXMPLDIR_PATTERNS=	${REPLACE_EXMPLDIR_PATTERNS}
.if defined(HAS_CONFIGURE)
_REPLACE_EXMPLDIR_PATTERNS+=	[Mm]akefile.in*
.else
_REPLACE_EXMPLDIR_PATTERNS+=	[Mm]akefile*
.endif
_REPLACE_EXMPLDIR_PATTERNS_FIND_cmd=					\
	cd ${WRKSRC} &&							\
	${ECHO} "__dummy-entry__" &&					\
	${FIND} . \( ${_REPLACE_EXMPLDIR_PATTERNS:C/.*/-o -name "&"/g:S/-o//1} \) -print | \
	${SED} -e 's|^\./||' |						\
	${SORT} -u

REPLACE_EXMPLDIR?=	# empty
_REPLACE_EXMPLDIR=	\
	${REPLACE_EXMPLDIR}						\
	${_REPLACE_EXMPLDIR_PATTERNS_FIND_cmd:sh:N__dummy-entry__:N*.orig}

.if empty(USE_PKGEXMPLDIR:M[nN][oO])
SUBST_CLASSES+=			pkgexamples
.endif
SUBST_STAGE.pkgexamples=	do-configure-pre-hook
SUBST_MESSAGE.pkgexamples=	Fixing examples directory references.
SUBST_FILES.pkgexamples=	${_REPLACE_EXMPLDIR}
SUBST_SED.pkgexamples=		\
	-e 's|^\(cfgdir[ 	:]*=\).*|\1 ${_PKGEXMPLDIR}|'		\
	-e 's|^\(syntaxconfdir[ 	:]*=\).*|\1 ${_PKGEXMPLDIR}|'		\
	-e 's|^\(extfsconfdir[ 	:]*=\).*|\1 ${_PKGEXMPLDIR}|'		\
	-e 's|\(-DEXMPLDIR[ 	]*=\)[^ 	]*\(\.\*\)|\1"\\"${_PKGEXMPLDIR}\\""\2|'
