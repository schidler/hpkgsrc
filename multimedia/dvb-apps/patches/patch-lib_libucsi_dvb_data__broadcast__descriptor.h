$NetBSD$

--- lib/libucsi/dvb/data_broadcast_descriptor.h.orig	2011-06-28 05:50:24.000000000 +0000
+++ lib/libucsi/dvb/data_broadcast_descriptor.h
@@ -72,7 +72,7 @@ static inline struct dvb_data_broadcast_
 	if (pos > len)
 		return NULL;
 
-	bswap16(buf + 2);
+	ubswap16(buf + 2);
 
 	pos += p->selector_length;
 
