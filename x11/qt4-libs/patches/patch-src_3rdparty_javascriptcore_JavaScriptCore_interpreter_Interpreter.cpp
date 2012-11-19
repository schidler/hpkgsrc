$NetBSD$

--- src/3rdparty/javascriptcore/JavaScriptCore/interpreter/Interpreter.cpp.orig	2012-09-11 01:36:49.022806528 +0000
+++ src/3rdparty/javascriptcore/JavaScriptCore/interpreter/Interpreter.cpp
@@ -2493,8 +2493,10 @@ JSValue Interpreter::privateExecute(Exec
             vPC += OPCODE_LENGTH(op_get_by_pname);
             NEXT_INSTRUCTION();
         }
+        {
         Identifier propertyName(callFrame, subscript.toString(callFrame));
         result = baseValue.get(callFrame, propertyName);
+        }
         CHECK_FOR_EXCEPTION();
         callFrame->r(dst) = result;
         vPC += OPCODE_LENGTH(op_get_by_pname);
