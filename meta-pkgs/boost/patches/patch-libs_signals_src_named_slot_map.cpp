--- libs/signals/src/named_slot_map.cpp.orig	2009-11-08 02:48:37.000000000 +0100
+++ libs/signals/src/named_slot_map.cpp	2011-10-24 16:04:24.749105300 +0200
--- libs/signals/src/named_slot_map.cpp.orig	2012-06-06 04:46:32.409993216 +0000
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
