s|^\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1|g
s|^\(/[^ 	`"':;,]*\)/\.$|\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-I\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.$|-I\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-L\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.$|-L\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,--rpath,\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,--rpath,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath,\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-R\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.$|-Wl,-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.$|-R\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work/.buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work/.buildlink$|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-L/source/build/hpkgsrc/math/muparser/work/.buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-L/source/build/hpkgsrc/math/muparser/work/.buildlink$|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink$|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink$|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink$|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink$|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-R/source/build/hpkgsrc/math/muparser/work/.buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-R/source/build/hpkgsrc/math/muparser/work/.buildlink$|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-L/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-L/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-R/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-R/source/build/hpkgsrc/math/muparser/work/.buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work\([ 	`"':;,]\)|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work$|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#|g
s|^-L/source/build/hpkgsrc/math/muparser/work\([ 	`"':;,]\)|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-L/source/build/hpkgsrc/math/muparser/work$|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work$|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work$|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work$|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work$|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#|g
s|^-R/source/build/hpkgsrc/math/muparser/work\([ 	`"':;,]\)|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-R/source/build/hpkgsrc/math/muparser/work$|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#|g
s|^/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-I/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-L/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-L/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-Wl,-R/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-R/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-R/source/build/hpkgsrc/math/muparser/work\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_include#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_include#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_lib#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,--rpath,/boot/common/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,-rpath-link,/boot/common/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,-rpath,/boot/common/pkg|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,-R/boot/common/pkg|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-R/boot/common/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/boot/common/pkg\1|g
s|^-Wl,--rpath,/boot/common/pkg/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,--rpath,/boot/common/pkg/lib$|-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#|g
s|^-Wl,-rpath-link,/boot/common/pkg/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/pkg/lib$|-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#|g
s|^-Wl,-rpath,/boot/common/pkg/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-rpath,/boot/common/pkg/lib$|-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#|g
s|^-Wl,-R/boot/common/pkg/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-R/boot/common/pkg/lib$|-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#|g
s|^-R/boot/common/pkg/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-R/boot/common/pkg/lib$|-R_bUiLdLiNk__boot_common_pkg_lib#|g
s|^-Wl,--rpath,/boot/common/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,--rpath,/boot/common/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-rpath,/boot/common/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-rpath,/boot/common/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-R/boot/common/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,-R/boot/common/pkg/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-R/boot/common/pkg/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-R/boot/common/pkg/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__boot_common_pkg_lib#\1|g
s|^-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,--rpath,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath-link,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-rpath,/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,-R/usr/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__usr_lib#\1|g
s|^-R/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__usr_lib#\1|g
s|^-R/usr/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__usr_lib#\1|g
s|^/boot/common/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|/boot/common/pkg\1|g
s|^/boot/common/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|/boot/common/pkg\1|g
s|^-I/boot/common/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|-I/boot/common/pkg\1|g
s|^-I/boot/common/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|-I/boot/common/pkg\1|g
s|^-L/boot/common/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*[ 	`"':;,]\)|-L/boot/common/pkg\1|g
s|^-L/boot/common/pkg/packages/[^/ 	`"':;,]*\(/[^ 	`"':;,]*\)$|-L/boot/common/pkg\1|g
s|^/boot/common/pkg\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^/boot/common/pkg\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/boot/common/pkg\([ 	`"':;,]\)|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/boot/common/pkg$|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-I/boot/common/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/boot/common/pkg\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-L/boot/common/pkg\([ 	`"':;,]\)|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-L/boot/common/pkg$|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#|g
s|^-L/boot/common/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-L/boot/common/pkg\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\1|g
s|^-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-I/[^ 	`"':;,]*$||g
s|^-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-L/[^ 	`"':;,]*$||g
s|^-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,--rpath,/[^ 	`"':;,]*$||g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*$||g
s|^-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath,/[^ 	`"':;,]*$||g
s|^-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-R/[^ 	`"':;,]*$||g
s|^-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-R/[^ 	`"':;,]*$||g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#$|-Wl,--rpath,/boot/common/pkg/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#$|-Wl,-rpath-link,/boot/common/pkg/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#$|-Wl,-rpath,/boot/common/pkg/lib|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#$|-Wl,-R/boot/common/pkg/lib|g
s|^-R_bUiLdLiNk__boot_common_pkg_lib#\([ 	`"':;,]\)|-R/boot/common/pkg/lib\1|g
s|^-R_bUiLdLiNk__boot_common_pkg_lib#$|-R/boot/common/pkg/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/common/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/common/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/common/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/common/pkg/lib\1|g
s|^-R_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/common/pkg/lib\1|g
s|^-R_bUiLdLiNk__boot_common_pkg_lib#\(/[^ 	`"':;,]*\)$|-R/boot/common/pkg/lib\1|g
s|^-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#$|-I/usr/include|g
s|^-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#$|-L/usr/include|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#$|-Wl,--rpath,/usr/include|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#$|-Wl,-rpath-link,/usr/include|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#$|-Wl,-rpath,/usr/include|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#$|-Wl,-R/usr/include|g
s|^-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#$|-R/usr/include|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/include\1|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la\)$|/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-I/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-L/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-R/usr/include\1|g
s|^-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#$|-I/usr/lib|g
s|^-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#$|-L/usr/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#$|-Wl,--rpath,/usr/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#$|-Wl,-rpath-link,/usr/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#$|-Wl,-rpath,/usr/lib|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#$|-Wl,-R/usr/lib|g
s|^-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#$|-R/usr/lib|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/lib\1|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la\)$|/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-I/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-L/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-R/usr/lib\1|g
s|^-I_bUiLdLiNk__boot_common_pkg#\([ 	`"':;,]\)|-I/boot/common/pkg\1|g
s|^-I_bUiLdLiNk__boot_common_pkg#$|-I/boot/common/pkg|g
s|^-L_bUiLdLiNk__boot_common_pkg#\([ 	`"':;,]\)|-L/boot/common/pkg\1|g
s|^-L_bUiLdLiNk__boot_common_pkg#$|-L/boot/common/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg#\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg#$|-Wl,--rpath,/boot/common/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg#$|-Wl,-rpath-link,/boot/common/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg#\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg#$|-Wl,-rpath,/boot/common/pkg|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg#\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg#$|-Wl,-R/boot/common/pkg|g
s|^-R_bUiLdLiNk__boot_common_pkg#\([ 	`"':;,]\)|-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__boot_common_pkg#$|-R/boot/common/pkg|g
s|^_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/boot/common/pkg\1|g
s|^_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\.la\)$|/boot/common/pkg\1|g
s|^-I_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/boot/common/pkg\1|g
s|^-I_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)$|-I/boot/common/pkg\1|g
s|^-L_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/boot/common/pkg\1|g
s|^-L_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)$|-L/boot/common/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__boot_common_pkg#\(/[^ 	`"':;,]*\)$|-R/boot/common/pkg\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\([ 	`"':;,]\)|-I/source/build/hpkgsrc/math/muparser/work\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#$|-I/source/build/hpkgsrc/math/muparser/work|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\([ 	`"':;,]\)|-L/source/build/hpkgsrc/math/muparser/work\1|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#$|-L/source/build/hpkgsrc/math/muparser/work|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\([ 	`"':;,]\)|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#$|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\([ 	`"':;,]\)|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#$|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\([ 	`"':;,]\)|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#$|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\([ 	`"':;,]\)|-Wl,-R/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#$|-Wl,-R/source/build/hpkgsrc/math/muparser/work|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\([ 	`"':;,]\)|-R/source/build/hpkgsrc/math/muparser/work\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#$|-R/source/build/hpkgsrc/math/muparser/work|g
s|^_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/source/build/hpkgsrc/math/muparser/work\1|g
s|^_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\.la\)$|/source/build/hpkgsrc/math/muparser/work\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/source/build/hpkgsrc/math/muparser/work\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)$|-I/source/build/hpkgsrc/math/muparser/work\1|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/source/build/hpkgsrc/math/muparser/work\1|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)$|-L/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/source/build/hpkgsrc/math/muparser/work\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)$|-Wl,-R/source/build/hpkgsrc/math/muparser/work\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/source/build/hpkgsrc/math/muparser/work\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work#\(/[^ 	`"':;,]*\)$|-R/source/build/hpkgsrc/math/muparser/work\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-I/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-I/source/build/hpkgsrc/math/muparser/work/.buildlink|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-L/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-L/source/build/hpkgsrc/math/muparser/work/.buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\([ 	`"':;,]\)|-R/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#$|-R/source/build/hpkgsrc/math/muparser/work/.buildlink|g
s|^_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-I_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-I/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-L_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-L/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
s|^-R_bUiLdLiNk__source_build_hpkgsrc_math_muparser_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/source/build/hpkgsrc/math/muparser/work/.buildlink\1|g
