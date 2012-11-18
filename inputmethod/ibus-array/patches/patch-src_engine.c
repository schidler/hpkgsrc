$NetBSD$

* for ibus-1.4

--- src/engine.c.orig	2009-10-18 17:06:12.000000000 +0000
+++ src/engine.c
@@ -79,7 +79,7 @@ static void ibus_array_engine_show_speci
 static void ibus_config_value_changed (IBusConfig *config, 
                                         const gchar *section, 
                                         const gchar *name, 
-                                        GValue *value, 
+                                        GVariant *value, 
                                         gpointer user_data);
 
 static IBusEngineClass *parent_class = NULL;
@@ -120,7 +120,7 @@ void 
 ibus_array_init (IBusBus *bus) 
 {
     gboolean res;
-    GValue value = { 0, };
+    GVariant *value = NULL;
 
     array_context = array_create_context();
 
@@ -129,20 +129,22 @@ ibus_array_init (IBusBus *bus) 
     is_special_notify = FALSE;
     is_special_only = FALSE;
 
-    res = ibus_config_get_value (config, "engine/Array", 
-                                "SpecialNotify", &value);
+    res = ((value = ibus_config_get_value (config, "engine/Array", 
+                                "SpecialNotify")) != NULL);
     if (res) {
-        const gchar* str = g_value_get_string(&value);
+        const gchar* str = g_variant_get_string(value, NULL);
         if (g_strcmp0(str, "1") == 0)
             is_special_notify = TRUE;
+        g_variant_unref(value);
     }
 
-    res = ibus_config_get_value (config, "engine/Array", 
-                                "SpecialOnly", &value);
+    res = ((value = ibus_config_get_value (config, "engine/Array", 
+                                "SpecialOnly")) != NULL);
     if (res) {
-        const gchar* str = g_value_get_string(&value);
+        const gchar* str = g_variant_get_string(value, NULL);
         if (g_strcmp0(str, "1") == 0)
             is_special_only = TRUE;
+        g_variant_unref(value);
     }
 }
 
@@ -754,14 +756,14 @@ static void ibus_array_engine_property_a
 static void ibus_config_value_changed (IBusConfig *config, 
                                         const gchar *section, 
                                         const gchar *name, 
-                                        GValue *value, 
+                                        GVariant *value, 
                                         gpointer user_data)
 {
     IBusArrayEngine *arrayeng = (IBusArrayEngine*)user_data;
 
     if (g_strcmp0(section, "engine/Array") == 0) {
         if (g_strcmp0(name, "SpecialNotify") == 0) {
-            const gchar* str = g_value_get_string(value);
+            const gchar* str = g_variant_get_string(value, NULL);
             if (g_strcmp0(str, "1") == 0) {
                 is_special_notify = TRUE;
             }
@@ -770,7 +772,7 @@ static void ibus_config_value_changed (I
             }
         }
         else if (g_strcmp0(name, "SpecialOnly") == 0) {
-            const gchar* str = g_value_get_string(value);
+            const gchar* str = g_variant_get_string(value, NULL);
             if (g_strcmp0(str, "1") == 0) {
                 is_special_only = TRUE;
             }
