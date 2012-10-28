$NetBSD$

--- Modules/resource.c.orig	2012-04-09 23:07:34.024379392 +0000
+++ Modules/resource.c
@@ -86,6 +86,7 @@ resource_getrusage(PyObject *self, PyObj
                     PyFloat_FromDouble(doubletime(ru.ru_utime)));
     PyStructSequence_SET_ITEM(result, 1,
                     PyFloat_FromDouble(doubletime(ru.ru_stime)));
+#ifndef __HAIKU__
     PyStructSequence_SET_ITEM(result, 2, PyInt_FromLong(ru.ru_maxrss));
     PyStructSequence_SET_ITEM(result, 3, PyInt_FromLong(ru.ru_ixrss));
     PyStructSequence_SET_ITEM(result, 4, PyInt_FromLong(ru.ru_idrss));
@@ -100,6 +101,7 @@ resource_getrusage(PyObject *self, PyObj
     PyStructSequence_SET_ITEM(result, 13, PyInt_FromLong(ru.ru_nsignals));
     PyStructSequence_SET_ITEM(result, 14, PyInt_FromLong(ru.ru_nvcsw));
     PyStructSequence_SET_ITEM(result, 15, PyInt_FromLong(ru.ru_nivcsw));
+#endif
 
     if (PyErr_Occurred()) {
         Py_DECREF(result);
