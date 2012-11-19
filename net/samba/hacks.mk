# $NetBSD$

# Enabling PIE results in a 'Unsupported relocation type 6 in non-PLT
# relocations' error under NetBSD/macppc.
.if (${OPSYS} == "NetBSD" && ${MACHINE_ARCH} == "powerpc") || ${OPSYS} == "Haiku"
PKG_HACKS+=		pie
CONFIGURE_ARGS+=	--disable-pie
.endif
