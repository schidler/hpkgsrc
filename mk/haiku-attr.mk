# $Haiku: haiku-attr.mk,v 0.3 2012/06/15 16:49:48 diger

######################################################################
### get-haiku-attr (PRIVATE)
######################################################################
### get-haiku-attr replaces the path to the locale directory in
### various Makefiles with the one chosen by pkgsrc (PKGDOCDIR).
###

_DESKTOP_FILES_cmd= ${CAT} PLIST | ${SED} -n '/.desktop/p'
_GET_ATTR_cmd=	\
	cat ${DESTDIR}${PREFIX}/${_DESKTOP_FILES_cmd:sh} | grep = | sed 's|"||g' | sed 's|@||g' \
	| sed 's|\[|\_|' | sed 's|\]|\_|' | sed 's|=|="|' | sed 's|$$|\"|g'
#_GET_ATTR_cmd=	\
#	cat ${DESTDIR}${PREFIX}/${_DESKTOP_FILES_cmd:sh} | grep "="
NAME_ATTR= ${_GET_ATTR_cmd:sh:MName=*} | sed 's|Name=||g'
MENU_DIR_ATTR= ${_GET_ATTR_cmd:sh:MCategories=*} | sed 's|Categories=||g'
MIME_ATTR= ${_GET_ATTR_cmd:sh:MMimeType=*} | sed 's|MimeType=||g' | sed 's|;$$|\"|g' | sed 's|;|\", \"types\" = \"|g'
ICON_ATTR= ${_GET_ATTR_cmd:sh:MIcon=*} | sed 's|=||g' | sed 's|Icon||'
BIN_ATTR= ${_GET_ATTR_cmd:sh:MExec=*} | sed 's|Exec=||g' | sed 's| *[0-9A-Za-z]||g'
SHORT_ATTR= ${_GET_ATTR_cmd:sh:MGenericName=*} | sed 's|GenericName=||g'

#_TARGET_BIN_cmd= ${CAT} PLIST | ${SED} -n '|bin/${BIN_ATTR:sh}|p'



.if !empty(USE_HAIKUATTR:M[yY][eE][sS])
post-install: get-haiku-attr
.endif

.PHONY: get-haiku-attr
get-haiku-attr:
	@${DO_NADA}
	@${STEP_MSG} "Get attributes for Haiku"

	cp -f ${FILESDIR}/${PKGBASE}.rdef ${WRKDIR}
	@${STEP_MSG} ${MIME_ATTR}
	@${ECHO} -n	"resource app_signature \"application/x-vnd."	>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n ${NAME_ATTR}									>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	 "\";"											>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"resource app_version {"						>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n	"short_info = \""								>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n	${SHORT_ATTR}									>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} "\","												>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"long_info  = \"${COMMENT}\""					>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"};"											>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"resource file_types message {"					>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO} -n	"\"types\" = \""								>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	${MIME_ATTR}									>> ${WRKDIR}/${PKGBASE}.rdef
	@${ECHO}	"};"											>> ${WRKDIR}/${PKGBASE}.rdef
	
	rc	${WRKDIR}/${PKGBASE}.rdef
	xres ${DESTDIR}${PREFIX}/bin/${BIN_ATTR} ${WRKDIR}/${PKGBASE}.rsrc

