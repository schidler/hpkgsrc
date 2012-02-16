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
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink$|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink$|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink$|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink$|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink$|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink$|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink$|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work\([ 	`"':;,]\)|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work$|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work\([ 	`"':;,]\)|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work$|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work$|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work$|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work$|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work$|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work$|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#|g
s|^/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-I/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-L/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-R/boot/develop/hpkgsrc/devel/scmgit-base/work\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_include#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_include#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_lib#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,--rpath,/boot/common/pkg|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,-rpath-link,/boot/common/pkg|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,-rpath,/boot/common/pkg|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,-R/boot/common/pkg|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-R/boot/common/pkg|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/common/pkg\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/common/pkg\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/boot/common/pkg\1|g
s|^-Wl,--rpath,/boot/common/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,--rpath,/boot/common/lib$|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,-rpath-link,/boot/common/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/lib$|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,-rpath,/boot/common/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath,/boot/common/lib$|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,-R/boot/common/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-R/boot/common/lib$|-Wl,-R_bUiLdLiNk__boot_common_lib#|g
s|^-R/boot/common/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-R/boot/common/lib$|-R_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,--rpath,/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,--rpath,/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath,/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath,/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-R/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-R/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-R/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-R/boot/common/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,--rpath,/boot/common/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,--rpath,/boot/common/lib$|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,-rpath-link,/boot/common/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/lib$|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,-rpath,/boot/common/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath,/boot/common/lib$|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,-R/boot/common/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-R/boot/common/lib$|-Wl,-R_bUiLdLiNk__boot_common_lib#|g
s|^-R/boot/common/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-R/boot/common/lib$|-R_bUiLdLiNk__boot_common_lib#|g
s|^-Wl,--rpath,/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,--rpath,/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath-link,/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath,/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-rpath,/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-R/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-Wl,-R/boot/common/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-R/boot/common/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_common_lib#\1|g
s|^-R/boot/common/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__boot_common_lib#\1|g
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
s|^-Wl,--rpath,/boot/system/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,--rpath,/boot/system/lib$|-Wl,--rpath,_bUiLdLiNk__boot_system_lib#|g
s|^-Wl,-rpath-link,/boot/system/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-rpath-link,/boot/system/lib$|-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#|g
s|^-Wl,-rpath,/boot/system/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-rpath,/boot/system/lib$|-Wl,-rpath,_bUiLdLiNk__boot_system_lib#|g
s|^-Wl,-R/boot/system/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-R/boot/system/lib$|-Wl,-R_bUiLdLiNk__boot_system_lib#|g
s|^-R/boot/system/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_system_lib#\1|g
s|^-R/boot/system/lib$|-R_bUiLdLiNk__boot_system_lib#|g
s|^-Wl,--rpath,/boot/system/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,--rpath,/boot/system/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-rpath-link,/boot/system/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-rpath-link,/boot/system/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-rpath,/boot/system/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-rpath,/boot/system/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-R/boot/system/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__boot_system_lib#\1|g
s|^-Wl,-R/boot/system/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__boot_system_lib#\1|g
s|^-R/boot/system/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__boot_system_lib#\1|g
s|^-R/boot/system/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__boot_system_lib#\1|g
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
s|^/boot/common/pkg\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^/boot/common/pkg\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-I/boot/common/pkg\([ 	`"':;,]\)|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-I/boot/common/pkg$|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-I/boot/common/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-I/boot/common/pkg\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-L/boot/common/pkg\([ 	`"':;,]\)|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-L/boot/common/pkg$|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#|g
s|^-L/boot/common/pkg\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
s|^-L/boot/common/pkg\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\1|g
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
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#$|-Wl,--rpath,/boot/common/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#$|-Wl,-rpath-link,/boot/common/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#$|-Wl,-rpath,/boot/common/lib|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,-R/boot/common/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#$|-Wl,-R/boot/common/lib|g
s|^-R_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-R/boot/common/lib\1|g
s|^-R_bUiLdLiNk__boot_common_lib#$|-R/boot/common/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/common/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/common/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/common/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/common/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/common/lib\1|g
s|^-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/common/lib\1|g
s|^-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-R/boot/common/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#$|-Wl,--rpath,/boot/common/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#$|-Wl,-rpath-link,/boot/common/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#$|-Wl,-rpath,/boot/common/lib|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-Wl,-R/boot/common/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#$|-Wl,-R/boot/common/lib|g
s|^-R_bUiLdLiNk__boot_common_lib#\([ 	`"':;,]\)|-R/boot/common/lib\1|g
s|^-R_bUiLdLiNk__boot_common_lib#$|-R/boot/common/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/common/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/common/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/common/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/common/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/common/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/common/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/common/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/common/lib\1|g
s|^-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/common/lib\1|g
s|^-R_bUiLdLiNk__boot_common_lib#\(/[^ 	`"':;,]*\)$|-R/boot/common/lib\1|g
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
s|^-Wl,--rpath,_bUiLdLiNk__boot_system_lib#\([ 	`"':;,]\)|-Wl,--rpath,/boot/system/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_system_lib#$|-Wl,--rpath,/boot/system/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/system/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#$|-Wl,-rpath-link,/boot/system/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_system_lib#\([ 	`"':;,]\)|-Wl,-rpath,/boot/system/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_system_lib#$|-Wl,-rpath,/boot/system/lib|g
s|^-Wl,-R_bUiLdLiNk__boot_system_lib#\([ 	`"':;,]\)|-Wl,-R/boot/system/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_system_lib#$|-Wl,-R/boot/system/lib|g
s|^-R_bUiLdLiNk__boot_system_lib#\([ 	`"':;,]\)|-R/boot/system/lib\1|g
s|^-R_bUiLdLiNk__boot_system_lib#$|-R/boot/system/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/system/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/system/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/system/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/system/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/system/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/system/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/system/lib\1|g
s|^-Wl,-R_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/system/lib\1|g
s|^-R_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/system/lib\1|g
s|^-R_bUiLdLiNk__boot_system_lib#\(/[^ 	`"':;,]*\)$|-R/boot/system/lib\1|g
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
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\([ 	`"':;,]\)|-I/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#$|-I/boot/develop/hpkgsrc/devel/scmgit-base/work|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\([ 	`"':;,]\)|-L/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#$|-L/boot/develop/hpkgsrc/devel/scmgit-base/work|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\([ 	`"':;,]\)|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#$|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#$|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\([ 	`"':;,]\)|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#$|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\([ 	`"':;,]\)|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#$|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\([ 	`"':;,]\)|-R/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#$|-R/boot/develop/hpkgsrc/devel/scmgit-base/work|g
s|^_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\.la\)$|/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)$|-I/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)$|-L/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work#\(/[^ 	`"':;,]*\)$|-R/boot/develop/hpkgsrc/devel/scmgit-base/work\1|g
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\([ 	`"':;,]\)|-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#$|-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink|g
s|^_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-I_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-I/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-L_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-L/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
s|^-R_bUiLdLiNk__boot_develop_hpkgsrc_devel_scmgit-base_work_.buildlink#\(/[^ 	`"':;,]*\)$|-R/boot/develop/hpkgsrc/devel/scmgit-base/work/.buildlink\1|g
