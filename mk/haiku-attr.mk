# $Haiku: haiku-attr.mk,v 0.3 2012/06/15 16:49:48 diger

######################################################################
### get-haiku-attr (PRIVATE)
######################################################################
### get-haiku-attr get parametres from .desktop files
### and add to .rdef.
###
.if !empty(USE_HAIKUATTR:M[yY][eE][sS])

.include "../../mk/bsd.prefs.mk"

_DESKTOP_FILES!= cat PLIST | sed -n '/.desktop/p'
DESKTOP_FILES=${DESTDIR}${PREFIX}/${_DESKTOP_FILES}
#_GET_ATTR!=	\
#	cat ${DESTDIR}${PREFIX}/${_DESKTOP_FILES} | sed 's|"||g' | sed 's|@||g' \
#	| sed 's|\[|\_|' | sed 's|\]|\_|' | sed 's|=|="|' | sed 's|$$|\"|g'
#_GET_ATTR_cmd=	\
#	cat ${DESTDIR}${PREFIX}/${_DESKTOP_FILES_cmd:sh} | grep "="
#NAME_ATTR!= ${DESKTOP_FILES:MName=*} | sed 's|Name=||g'
#ICON_ATTR!= ${DESKTOP_FILES:MIcon=*} | sed 's|Icon=||g'
#NAME_ATTR= ${_GET_ATTR_cmd:sh:MName=*} | sed 's|Name=||g'
#MENU_DIR_ATTR= ${_GET_ATTR_cmd:sh:MCategories=*} | sed 's|Categories=||g'
#MIME_ATTR= ${_GET_ATTR_cmd:sh:MMimeType=*} | sed 's|MimeType=||g' | sed 's|;$$|\"|g' | sed 's|;|\", \"types\" = \"|g'
#ICON_ATTR= ${_GET_ATTR_cmd:sh:MIcon=*} | sed 's|=||g' | sed 's|Icon||'
#SHORT_ATTR= ${_GET_ATTR_cmd:sh:MGenericName=*} | sed 's|GenericName=||g'

#BIN_ATTR_cmd= cat ${DESTDIR}${PREFIX}/${_DESKTOP_FILES_cmd:sh} | grep "Icon=" | sed 's|Icon=||g'
#BIN_ATTR_cmd= ${_GET_ATTR_cmd:sh:MExec=*} | sed 's|Exec=||g'
#TARGET_BIN= ${BIN_ATTR_cmd=:sh}
#_TARGET_BIN= ${CAT} PLIST | ${SED} -n '|bin/arora|p'



post-install: get-haiku-attr

.PHONY: get-haiku-attr
get-haiku-attr:
	@${DO_NADA}
	@${STEP_MSG} "Get attributes for Haiku"

	cp -f ${FILESDIR}/${PKGBASE}.rdef ${WRKDIR}
	@${STEP_MSG} ${_DESKTOP_FILES}
	@${ECHO} -n	"resource app_signature \"application/x-vnd."	>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n ${NAME_ATTR}									>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"\";"											>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"resource app_version {"						>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n	"short_info = \""								>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n	${SHORT_ATTR}									>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} 	"\","											>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"long_info  = \"${COMMENT}\""					>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"};"											>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"resource file_types message {"					>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n	"\"types\" = \""								>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	${MIME_ATTR}									>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"};"											>> ${WRKDIR}/${PKGBASE}.rdef
	
	rc	${WRKDIR}/${PKGBASE}.rdef
	xres -o ${DESTDIR}${PREFIX}/bin/${TARGET_BIN} ${WRKDIR}/${PKGBASE}.rsrc

.endif
