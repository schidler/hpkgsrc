$NetBSD$

--- pycaml/pycaml_ml.c.orig	2012-04-20 15:37:19.000000000 +0000
+++ pycaml/pycaml_ml.c
@@ -1468,7 +1468,7 @@ value pycaml_setargs(value argv) {
 
   PySys_SetArgv(1, cargv);
 
-  CAMLreturn0; 
+  CAMLreturn(Val_unit);
 }
 
 value pytrue( value unit ) {
