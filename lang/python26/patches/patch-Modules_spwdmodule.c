$NetBSD$

--- Modules/spwdmodule.c.orig	2010-05-09 15:15:40.065536000 +0000
+++ Modules/spwdmodule.c
@@ -79,7 +79,9 @@ static PyObject *mkspent(struct spwd *p)
 
     SETS(setIndex++, p->sp_namp);
     SETS(setIndex++, p->sp_pwdp);
+#ifndef __HAIKU__
     SETI(setIndex++, p->sp_lstchg);
+#endif
     SETI(setIndex++, p->sp_min);
     SETI(setIndex++, p->sp_max);
     SETI(setIndex++, p->sp_warn);
