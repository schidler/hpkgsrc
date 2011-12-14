# $NetBSD: builtin.mk,v 1.31 2011/02/28 11:02:46 adam Exp $

BUILTIN_PKG:=	png

BUILTIN_FIND_LIBS:=		png
BUILTIN_FIND_FILES_VAR:=	H_PNG
BUILTIN_FIND_FILES.H_PNG=	/boot/develop/headers/3rdparty/png.h
BUILTIN_FIND_GREP.H_PNG=	\#define[ 	]*PNG_LIBPNG_VER_STRING


.include "../../mk/buildlink3/bsd.builtin.mk"

###
### Determine if there is a built-in implementation of the package and
### set IS_BUILTIN.<pkg> appropriately ("yes" or "no").
###
.if !defined(IS_BUILTIN.png)
IS_BUILTIN.png=	no
.  if empty(H_PNG:M__nonexistent__) && empty(H_PNG:M${LOCALBASE}/*) && \
      (!empty(BUILTIN_LIB_FOUND.png:M[yY][eE][sS]))
IS_BUILTIN.png=	yes
.  endif
.endif
MAKEVARS+=	IS_BUILTIN.png

###
### If there is a built-in implementation, then set BUILTIN_PKG.<pkg> to
### a package name to represent the built-in package.
###
.if !defined(BUILTIN_PKG.png) && \
    !empty(IS_BUILTIN.png:M[yY][eE][sS]) && \
    empty(H_PNG:M__nonexistent__)
BUILTIN_VERSION.png!=						\
	${AWK} '/\#define[ 	]*PNG_LIBPNG_VER_STRING[ 	]/ {		\
			vers = $$3;					\
			gsub("\"", "", vers);				\
			print vers;					\
		}							\
	' ${H_PNG:Q}
BUILTIN_PKG.png=	png-${BUILTIN_VERSION.png}
.endif
MAKEVARS+=	BUILTIN_PKG.png

###
### Determine whether we should use the built-in implementation if it
### exists, and set USE_BUILTIN.<pkg> appropriate ("yes" or "no").
###
.if !defined(USE_BUILTIN.png)
.  if ${PREFER.png} == "pkgsrc"
USE_BUILTIN.png=	no
.  else
USE_BUILTIN.png=	${IS_BUILTIN.png}
.    if defined(BUILTIN_PKG.png) && \
        !empty(IS_BUILTIN.png:M[yY][eE][sS])
USE_BUILTIN.png=	yes
.      for _dep_ in ${BUILDLINK_API_DEPENDS.png}
.        if !empty(USE_BUILTIN.png:M[yY][eE][sS])
USE_BUILTIN.png!=							\
	if ${PKG_ADMIN} pmatch ${_dep_:Q} ${BUILTIN_PKG.png:Q}; then \
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi
.        endif
.      endfor
.    endif
.  endif  # PREFER.png
.endif
MAKEVARS+=	USE_BUILTIN.png
# XXX
# XXX By default, assume that the native png on Haiku systems is
# XXX good enough to replace png.  In reality, no version of Haiku
# XXX has a png library that can completely replace png; however,
# XXX some versions implement enough of png that some packages are
# XXX happy.
# XXX
.    if ${OPSYS} == "Haiku"
USE_BUILTIN.png=	yes
H_PNG=		/boot/develop/headers/3rdparty/png.h
.    endif
MAKEVARS+=	USE_BUILTIN.png

# If USE_PNG is defined, then force the use of a true png
# implementation.
#
.if defined(USE_PNG)
.  if !empty(IS_BUILTIN.png:M[nN][oO])
USE_BUILTIN.png=	no
.  endif
.endif
