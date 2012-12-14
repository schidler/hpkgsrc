$NetBSD$

--- gcc/ginclude/stdarg.h.orig	2009-04-09 15:00:19.005767168 +0000
+++ gcc/ginclude/stdarg.h
@@ -97,7 +97,7 @@ typedef __gnuc_va_list va_list;
 #ifndef _VA_LIST
 /* The macro _VA_LIST_T_H is used in the Bull dpx2  */
 #ifndef _VA_LIST_T_H
-/* The macro __va_list__ is used by BeOS.  */
+/* The macro __va_list__ is used by Haiku.  */
 #ifndef __va_list__
 typedef __gnuc_va_list va_list;
 #endif /* not __va_list__ */
