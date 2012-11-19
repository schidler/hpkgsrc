#!@RCD_SCRIPTS_SHELL@
#
#	$NetBSD: bpalogin,v 1.1.1.1 2002/04/12 08:20:32 rh Exp $
#
# bpalogin startup script
#
# PROVIDE: bpalogin
# REQUIRE: DAEMON dhcpd

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="bpalogin"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
command_args="-c @PKG_SYSCONFDIR@/${name}.conf & sleep 1"
required_files="@PKG_SYSCONFDIR@/${name}.conf"

if [ -f /etc/rc.subr ]
then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	${command} ${bpalogin_flags} ${command_args}
fi
