.if !defined(_MAKEVARS_MK)
_MAKEVARS_MK=	defined

TOOLS_DEPENDS.ghostscript=	ghostscript>=6.01:../../print/ghostscript
TOOLS_PREFIX.digest=	/boot/common/pkg
_BLNK_PHYSICAL_PATH.LOCALBASE=	/boot/common/pkg
_BLNK_PHYSICAL_PATH.WRKDIR=	/source/build/hpkgsrc/math/muparser/work
_IGNORE_INFO_PATH=	
_MANCOMPRESSED=	no
_MANZ=	no
_USE_TOOLS=	[ awk basename cat chgrp chmod chown cmp cp cut date diff digest dirname echo egrep env expr false file find ftp grep gzcat head hostname id install ln ls mkdir mv patch printf pwd rm rmdir sed sh sort tail tar test touch tr true uname wc xargs
_WRAP_PATH=	/source/build/hpkgsrc/math/muparser/work/.buildlink/bin:/source/build/hpkgsrc/math/muparser/work/.gcc/bin:/source/build/hpkgsrc/math/muparser/work/.tools/bin:/boot/common/pkg/bin:.:/boot/common/pkg/bin:/boot/home/config/bin:/boot/common/bin:/bin:/boot/apps:/boot/preferences:/boot/system/apps:/boot/system/preferences:/boot/develop/tools/gnupro/bin

.endif # _MAKEVARS_MK
