# $NetBSD: buildlink3.mk,v 1.21 2012/10/02 17:11:40 tron Exp $

BUILDLINK_TREE+=	gnome-media

.if !defined(GNOME_MEDIA_BUILDLINK3_MK)
GNOME_MEDIA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-media+=		gnome-media>=2.12.0nb1
BUILDLINK_ABI_DEPENDS.gnome-media+=	gnome-media>=2.28.5nb18
BUILDLINK_PKGSRCDIR.gnome-media?=	../../multimedia/gnome-media

.include "../../devel/GConf-ui/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # GNOME_MEDIA_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-media