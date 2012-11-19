#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: kdc.sh,v 1.2 2004/02/23 12:35:11 wiz Exp $
#
# PROVIDE: kdc
# REQUIRE: NETWORKING
# BEFORE:  SERVERS

. /etc/rc.subr

name="kdc"
rcvar=$name
command="@PREFIX@/libexec/${name}"
command_args="--detach"
required_files="@PKG_SYSCONFDIR@/krb5.conf"

load_rc_config $name
run_rc_command "$1"
