$NetBSD$

--- pathnames.h.orig	2010-08-31 12:41:14.030408704 +0000
+++ pathnames.h
@@ -12,7 +12,13 @@
  * called by a name other than "ssh" or "Secure Shell".
  */
 
-#define ETCDIR				"/etc"
+#define HAIKU_USER_SETTINGS_DIRECTORY   "~/config/settings"
+#define HAIKU_COMMON_SETTINGS_DIRECTORY         "/boot/common/settings"
+#define HAIKU_COMMON_BIN_DIRECTORY              "/boot/common/bin"
+#define HAIKU_COMMON_VAR_DIRECTORY              "/boot/common/var"
+#define HAIKU_SYSTEM_BIN_DIRECTORY              "/boot/system/bin"
+
+#define ETCDIR                          HAIKU_COMMON_SETTINGS_DIRECTORY
 
 #ifndef SSHDIR
 #define SSHDIR				ETCDIR "/ssh"
@@ -45,7 +51,7 @@
 #define _PATH_DH_PRIMES			SSHDIR "/primes"
 
 #ifndef _PATH_SSH_PROGRAM
-#define _PATH_SSH_PROGRAM		"/usr/bin/ssh"
+#define _PATH_SSH_PROGRAM               B_COMMON_BIN_DIRECTORY
 #endif
 
 /*
@@ -58,25 +64,25 @@
  * The directory in user's home directory in which the files reside. The
  * directory should be world-readable (though not all files are).
  */
-#define _PATH_SSH_USER_DIR		".ssh"
+#define _PATH_SSH_USER_DIR              "config/settings/ssh"
 
 /*
  * Per-user file containing host keys of known hosts.  This file need not be
  * readable by anyone except the user him/herself, though this does not
  * contain anything particularly secret.
  */
-#define _PATH_SSH_USER_HOSTFILE		"~/.ssh/known_hosts"
+#define _PATH_SSH_USER_HOSTFILE         "/boot/home/config/settings/ssh/known_hosts"
 /* backward compat for protocol 2 */
-#define _PATH_SSH_USER_HOSTFILE2	"~/.ssh/known_hosts2"
+#define _PATH_SSH_USER_HOSTFILE2        "/boot/home/config/settings/ssh/known_hosts2"
 
 /*
  * Name of the default file containing client-side authentication key. This
  * file should only be readable by the user him/herself.
  */
-#define _PATH_SSH_CLIENT_IDENTITY	".ssh/identity"
-#define _PATH_SSH_CLIENT_ID_DSA		".ssh/id_dsa"
-#define _PATH_SSH_CLIENT_ID_ECDSA	".ssh/id_ecdsa"
-#define _PATH_SSH_CLIENT_ID_RSA		".ssh/id_rsa"
+#define _PATH_SSH_CLIENT_IDENTITY       _PATH_SSH_USER_DIR "/identity"
+#define _PATH_SSH_CLIENT_ID_DSA         _PATH_SSH_USER_DIR "/id_dsa"
+#define _PATH_SSH_CLIENT_ID_ECDSA       _PATH_SSH_USER_DIR "/id_ecdsa"
+#define _PATH_SSH_CLIENT_ID_RSA         _PATH_SSH_USER_DIR "/id_rsa"
 
 /*
  * Configuration file in user's home directory.  This file need not be
@@ -84,7 +90,7 @@
  * particularly secret.  If the user's home directory resides on an NFS
  * volume where root is mapped to nobody, this may need to be world-readable.
  */
-#define _PATH_SSH_USER_CONFFILE		".ssh/config"
+#define _PATH_SSH_USER_CONFFILE         _PATH_SSH_USER_DIR "/config"
 
 /*
  * File containing a list of those rsa keys that permit logging in as this
@@ -94,10 +100,10 @@
  * may need to be world-readable.  (This file is read by the daemon which is
  * running as root.)
  */
-#define _PATH_SSH_USER_PERMITTED_KEYS	".ssh/authorized_keys"
+#define _PATH_SSH_USER_PERMITTED_KEYS   _PATH_SSH_USER_DIR "/authorized_keys"
 
 /* backward compat for protocol v2 */
-#define _PATH_SSH_USER_PERMITTED_KEYS2	".ssh/authorized_keys2"
+#define _PATH_SSH_USER_PERMITTED_KEYS2  _PATH_SSH_USER_DIR "/authorized_keys2"
 
 /*
  * Per-user and system-wide ssh "rc" files.  These files are executed with
@@ -105,7 +111,7 @@
  * passed "proto cookie" as arguments if X11 forwarding with spoofing is in
  * use.  xauth will be run if neither of these exists.
  */
-#define _PATH_SSH_USER_RC		".ssh/rc"
+#define _PATH_SSH_USER_RC               _PATH_SSH_USER_DIR "/rc"
 #define _PATH_SSH_SYSTEM_RC		SSHDIR "/sshrc"
 
 /*
@@ -124,12 +130,12 @@
 
 /* Location of ssh-keysign for hostbased authentication */
 #ifndef _PATH_SSH_KEY_SIGN
-#define _PATH_SSH_KEY_SIGN		"/usr/libexec/ssh-keysign"
+#define _PATH_SSH_KEY_SIGN		HAIKU_COMMON_BIN_DIRECTORY"/ssh-keysign"
 #endif
 
 /* Location of ssh-pkcs11-helper to support keys in tokens */
 #ifndef _PATH_SSH_PKCS11_HELPER
-#define _PATH_SSH_PKCS11_HELPER		"/usr/libexec/ssh-pkcs11-helper"
+#define _PATH_SSH_PKCS11_HELPER		HAIKU_COMMON_BIN_DIRECTORY"/ssh-pkcs11-helper"
 #endif
 
 /* xauth for X11 forwarding */
@@ -149,17 +155,17 @@
 
 /* for sftp */
 #ifndef _PATH_SFTP_SERVER
-#define _PATH_SFTP_SERVER		"/usr/libexec/sftp-server"
+#define _PATH_SFTP_SERVER               HAIKU_COMMON_BIN_DIRECTORY"/sftp-server"
 #endif
 
 /* chroot directory for unprivileged user when UsePrivilegeSeparation=yes */
 #ifndef _PATH_PRIVSEP_CHROOT_DIR
-#define _PATH_PRIVSEP_CHROOT_DIR	"/var/empty"
+#define _PATH_PRIVSEP_CHROOT_DIR        HAIKU_COMMON_VAR_DIRECTORY "/empty"
 #endif
 
 /* for passwd change */
 #ifndef _PATH_PASSWD_PROG
-#define _PATH_PASSWD_PROG             "/usr/bin/passwd"
+#define _PATH_PASSWD_PROG             HAIKU_SYSTEM_BIN_DIRECTORY "/passwd"
 #endif
 
 #ifndef _PATH_LS
@@ -171,11 +177,11 @@
 # ifdef LOGIN_PROGRAM_FALLBACK
 #  define LOGIN_PROGRAM         LOGIN_PROGRAM_FALLBACK
 # else
-#  define LOGIN_PROGRAM         "/usr/bin/login"
+#  define LOGIN_PROGRAM         HAIKU_SYSTEM_BIN_DIRECTORY "/login"
 # endif
 #endif /* LOGIN_PROGRAM */
 
 /* Askpass program define */
 #ifndef ASKPASS_PROGRAM
-#define ASKPASS_PROGRAM         "/usr/lib/ssh/ssh-askpass"
+#define ASKPASS_PROGRAM         HAIKU_COMMON_BIN_DIRECTORY "/ssh/ssh-askpass"
 #endif /* ASKPASS_PROGRAM */
