#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: kdc.sh,v 1.1.1.1 2004/03/30 18:07:18 jlam Exp $
#
# PROVIDE: kdc
# REQUIRE: NETWORKING
# BEFORE:  SERVERS

. /etc/rc.subr

name="kdc"
rcvar=$name
command="@PREFIX@/sbin/krb5kdc"
required_files="@PKG_SYSCONFDIR@/krb5.conf @MIT_KRB5_STATEDIR@/krb5kdc/kdc.conf"

load_rc_config $name
run_rc_command "$1"
