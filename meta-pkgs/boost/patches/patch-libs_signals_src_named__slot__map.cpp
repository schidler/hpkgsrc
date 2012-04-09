$NetBSD$

--- libs/signals/src/named_slot_map.cpp.orig	2012-03-24 18:03:30.009699328 +0000
+++ libs/signals/src/named_slot_map.cpp
@@ -102,7 +102,7 @@ void named_slot_map::disconnect(const st
       i->first.disconnect();
       i = next;
     }
-    groups.erase(group);
+    groups.erase((const_group_iterator) group);
   }
 }
 
@@ -125,7 +125,7 @@ void named_slot_map::remove_disconnected
     }
 
     // Clear out empty groups
-    if (empty(g)) groups.erase(g++);
+    if (empty(g)) groups.erase((const_group_iterator) g++);
     else ++g;
   }
 }
