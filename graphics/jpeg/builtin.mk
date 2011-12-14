# $NetBSD: builtin.mk,v 1.31 2011/02/28 11:02:46 adam Exp $

BUILTIN_PKG:=	jpeg

BUILTIN_FIND_LIBS:=		jpeg
BUILTIN_FIND_FILES_VAR:=	H_JPEG
BUILTIN_FIND_FILES.H_JPEG=	/boot/develop/headers/3rdparty/jpeglib.h
BUILTIN_FIND_GREP.H_JPEG=	\#define[ 	]*JPEG_LIB_VERSION


.include "../../mk/buildlink3/bsd.builtin.mk"

###
### Determine if there is a built-in implementation of the package and
### set IS_BUILTIN.<pkg> appropriately ("yes" or "no").
###
.if !defined(IS_BUILTIN.jpeg)
IS_BUILTIN.jpeg=	no
.  if empty(H_JPEG:M__nonexistent__) && empty(H_JPEG:M${LOCALBASE}/*) && \
      (!empty(BUILTIN_LIB_FOUND.jpeg:M[yY][eE][sS]))
IS_BUILTIN.jpeg=	yes
.  endif
.endif
MAKEVARS+=	IS_BUILTIN.jpeg

###
### If there is a built-in implementation, then set BUILTIN_PKG.<pkg> to
### a package name to represent the built-in package.
###
.if !defined(BUILTIN_PKG.jpeg) && \
    !empty(IS_BUILTIN.jpeg:M[yY][eE][sS]) && \
    empty(H_JPEG:M__nonexistent__)
BUILTIN_VERSION.jpeg!=						\
	${AWK} '/\#define[ 	]*JPEG_LIB_VERSION[ 	]/ {		\
			vers = $$3;					\
			gsub("\"", "", vers);				\
			print vers;					\
		}							\
	' ${H_JPEG:Q}
BUILTIN_PKG.jpeg=	jpeg-${BUILTIN_VERSION.jpeg}
.endif
MAKEVARS+=	BUILTIN_PKG.jpeg

###
### Determine whether we should use the built-in implementation if it
### exists, and set USE_BUILTIN.<pkg> appropriate ("yes" or "no").
###
.if !defined(USE_BUILTIN.jpeg)
.  if ${PREFER.jpeg} == "pkgsrc"
USE_BUILTIN.jpeg=	no
.  else
USE_BUILTIN.jpeg=	${IS_BUILTIN.jpeg}
.    if defined(BUILTIN_PKG.jpeg) && \
        !empty(IS_BUILTIN.jpeg:M[yY][eE][sS])
USE_BUILTIN.jpeg=	yes
.      for _dep_ in ${BUILDLINK_API_DEPENDS.jpeg}
.        if !empty(USE_BUILTIN.jpeg:M[yY][eE][sS])
USE_BUILTIN.jpeg!=							\
	if ${PKG_ADMIN} pmatch ${_dep_:Q} ${BUILTIN_PKG.jpeg:Q}; then \
		${ECHO} yes;						\
	else								\
		${ECHO} no;						\
	fi
.        endif
.      endfor
.    endif
.  endif  # PREFER.jpeg
.endif
MAKEVARS+=	USE_BUILTIN.jpeg
# XXX
# XXX By default, assume that the native jpeg on Haiku systems is
# XXX good enough to replace jpeg.  In reality, no version of Haiku
# XXX has a jpeg library that can completely replace jpeg; however,
# XXX some versions implement enough of jpeg that some packages are
# XXX happy.
# XXX
.    if ${OPSYS} == "Haiku"
USE_BUILTIN.jpeg=	yes
H_JPEG=		/boot/develop/headers/3rdparty/jpeglib.h
.    endif
MAKEVARS+=	USE_BUILTIN.jpeg

# If USE_JPEG is defined, then force the use of a true jpeg
# implementation.
#
.if defined(USE_JPEG)
.  if !empty(IS_BUILTIN.jpeg:M[nN][oO])
USE_BUILTIN.jpeg=	no
.  endif
.endif
