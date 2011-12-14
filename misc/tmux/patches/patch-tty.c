$NetBSD$

--- tty.c.orig	2011-11-26 20:12:44.774373376 +0000
+++ tty.c
@@ -179,7 +179,11 @@ tty_start_tty(struct tty *tty)
 	bufferevent_enable(tty->event, EV_READ|EV_WRITE);
 
 	memcpy(&tio, &tty->tio, sizeof tio);
-	tio.c_iflag &= ~(IXON|IXOFF|ICRNL|INLCR|IGNCR|IMAXBEL|ISTRIP);
+	tio.c_iflag &= ~(IXON|IXOFF|ICRNL|INLCR|IGNCR
+	#ifndef __HAIKU__
+	|IMAXBEL
+	#endif
+	|ISTRIP);
 	tio.c_iflag |= IGNBRK;
 	tio.c_oflag &= ~(OPOST|ONLCR|OCRNL|ONLRET);
 	tio.c_lflag &= ~(IEXTEN|ICANON|ECHO|ECHOE|ECHONL|ECHOCTL|
