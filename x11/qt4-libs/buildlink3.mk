# $NetBSD: buildlink3.mk,v 1.32 2012/09/07 19:17:51 adam Exp $

BUILDLINK_TREE+=	qt4-libs

.if !defined(QT4_LIBS_BUILDLINK3_MK)
QT4_LIBS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt4-libs+=	qt4-libs>=4.6.1nb2
BUILDLINK_ABI_DEPENDS.qt4-libs+=	qt4-libs>=4.8.3
BUILDLINK_PKGSRCDIR.qt4-libs?=	../../x11/qt4-libs

BUILDLINK_INCDIRS.qt4-libs+=	qt4/include
BUILDLINK_LIBDIRS.qt4-libs+=	qt4/lib

QTDIR=	${BUILDLINK_PREFIX.qt4-libs}/qt4

PTHREAD_OPTS+=	require

.include "../../mk/bsd.fast.prefs.mk"

.if ${OPSYS} != "Haiku"
.include "../../fonts/fontconfig/buildlink3.mk"
.endif
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.if ${OPSYS} != "Darwin" && ${OPSYS} != "Haiku"
.include "../../graphics/glu/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.  if ${X11_TYPE} == "modular"
.  include "../../x11/libXinerama/buildlink3.mk"
.  endif
.endif
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

pkgbase := qt4-libs
.include "../../mk/pkg-build-options.mk"
.if !empty(PKG_BUILD_OPTIONS.qt4-libs:Mgtk2)
.  include "../../devel/glib2/buildlink3.mk"
#.  include "../../x11/gtk2/buildlink3.mk"
.endif

.if !defined(BUILD_QT4)
CONFIGURE_ENV+=		QTDIR=${QTDIR}
MAKE_ENV+=		QTDIR=${QTDIR}
.endif

CONFIGURE_ENV+=		MOC="${QTDIR}/bin/moc"
MAKE_ENV+=		MOC="${QTDIR}/bin/moc"
.endif # QT4_LIBS_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt4-libs
