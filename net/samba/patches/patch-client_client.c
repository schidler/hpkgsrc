$NetBSD: patch-client_client.c,v 1.3 2012/01/30 23:07:06 tron Exp $

Restore compatibility with CIFS server on Apple Time Capsule. Patch
take from here:

https://bugzilla.samba.org/show_bug.cgi?id=8139

--- client/client.c.orig	2012-01-29 19:40:43.014680064 +0000
+++ client/client.c
@@ -4844,12 +4844,16 @@ static void readline_callback(void)
 		memset(garbage, 0xf0, sizeof(garbage));
 		status = cli_echo(cli, 1, data_blob_const(garbage, sizeof(garbage)));
 
-		if (!NT_STATUS_IS_OK(status)) {
+		if (NT_STATUS_EQUAL(status, NT_STATUS_PIPE_BROKEN) ||
+				NT_STATUS_EQUAL(status, NT_STATUS_END_OF_FILE) ||
+				NT_STATUS_EQUAL(status, NT_STATUS_IO_TIMEOUT)) {
 			DEBUG(0, ("SMBecho failed. Maybe server has closed "
 				"the connection\n"));
 			finished = true;
 			smb_readline_done();
 		}
+		/* Ignore all other errors - sometimes servers simply
+		   don't implement SMBecho (Apple for example). */
 	}
 }
 
