# $NetBSD: builtin.mk,v 1.31 2011/02/28 11:02:46 adam Exp $

BUILTIN_PKG:=	tiff

BUILTIN_FIND_LIBS:=		tiff
BUILTIN_FIND_FILES_VAR:=	H_TIFF
BUILTIN_FIND_FILES.H_TIFF=	/boot/develop/headers/3rdparty/tiff.h
BUILTIN_FIND_GREP.H_TIFF=	\#define[ 	]*TIFF_LIBTIFF_VER_STRING


.include "../../mk/buildlink3/bsd.builtin.mk"

###
### Determine if there is a built-in implementation of the package and
### set IS_BUILTIN.<pkg> appropriately ("yes" or "no").
###
.if !defined(IS_BUILTIN.tiff)
IS_BUILTIN.tiff=	no
.  if empty(H_TIFF:M__nonexistent__) && empty(H_TIFF:M${LOCALBASE}/*) && \
      (!empty(BUILTIN_LIB_FOUND.tiff:M[yY][eE][sS]))
IS_BUILTIN.tiff=	yes
.  endif
.endif
MAKEVARS+=	IS_BUILTIN.tiff

###
### If there is a built-in implementation, then set BUILTIN_PKG.<pkg> to
### a package name to represent the built-in package.
###
.if !defined(BUILTIN_PKG.tiff) && \
    !empty(IS_BUILTIN.tiff:M[yY][eE][sS]) && \
    empty(H_TIFF:M__nonexistent__)
BUILTIN_VERSION.tiff!=						\
	${AWK} '/\#define[ 	]*TIFF_LIBTIFF_VER_STRING[ 	]/ {		\
			vers = $$3;					\
			gsub("\"", "", vers);				\
			print vers;					\
		}							\
	' ${H_TIFF:Q}
BUILTIN_PKG.tiff=	tiff-${BUILTIN_VERSION.tiff}
.endif
MAKEVARS+=	BUILTIN_PKG.tiff

###
### Determine whether we should use the built-in implementation if it
### exists, and set USE_BUILTIN.<pkg> appropriate ("yes" or "no").
###
.if !defined(USE_BUILTIN.tiff)
.  if ${PREFER.tiff} == "pkgsrc"
USE_BUILTIN.tiff=	no
.  else
USE_BUILTIN.tiff=	${IS_BUILTIN.tiff}
.    if defined(BUILTIN_PKG.tiff) && \
        !empty(IS_BUILTIN.tiff:M[yY][eE][sS])
USE_BUILTIN.tiff=	yes
.      for _dep_ in ${BUILDLINK_API_DEPENDS.tiff}
.        if !empty(USE_BUILTIN.tiff:M[yY][eE][sS])
USE_BUILTIN.tiff!=							\
	if ${PKG_ADMIN} pmatch ${_dep_:Q} ${BUILTIN_PKG.tiff:Q}; then \
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi
.        endif
.      endfor
.    endif
.  endif  # PREFER.tiff
.endif
MAKEVARS+=	USE_BUILTIN.tiff
# XXX
# XXX By default, assume that the native tiff on Haiku systems is
# XXX good enough to replace tiff.  In reality, no version of Haiku
# XXX has a tiff library that can completely replace tiff; however,
# XXX some versions implement enough of tiff that some packages are
# XXX happy.
# XXX
.    if ${OPSYS} == "Haiku"
USE_BUILTIN.tiff=	yes
H_TIFF=		/boot/develop/headers/3rdparty/tiff.h
.    endif
MAKEVARS+=	USE_BUILTIN.tiff

# If USE_TIFF is defined, then force the use of a true tiff
# implementation.
#
.if defined(USE_TIFF)
.  if !empty(IS_BUILTIN.tiff:M[nN][oO])
USE_BUILTIN.tiff=	no
.  endif
.endif
