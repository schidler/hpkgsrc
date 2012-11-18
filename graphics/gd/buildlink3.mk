# $NetBSD: buildlink3.mk,v 1.23 2011/01/13 13:36:07 wiz Exp $

BUILDLINK_TREE+=	gd

.if !defined(GD_BUILDLINK3_MK)
GD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gd+=	gd>=2.0.15nb1
BUILDLINK_ABI_DEPENDS.gd+=	gd>=2.0.35nb9
BUILDLINK_PKGSRCDIR.gd?=	../../graphics/gd

pkgbase := gd
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.gd:Mx11)
.include "../../x11/libXpm/buildlink3.mk"
#.include "../../x11/libXp/buildlink3.mk"
#.include "../../mk/xaw.buildlink3.mk"
.endif

.include "../../devel/zlib/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"

.include "../../mk/pthread.buildlink3.mk"
.endif # GD_BUILDLINK3_MK

BUILDLINK_TREE+=	-gd
