$NetBSD$

--- sql/sql_profile.cc.orig	2012-11-18 19:23:43.720633856 +0000
+++ sql/sql_profile.cc
@@ -639,7 +639,7 @@ int PROFILING::fill_statistics_info(THD 
       /* TODO: Add CPU-usage info for non-BSD systems */
 #endif
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
       table->field[6]->store((uint32)(entry->rusage.ru_nvcsw -
                              previous->rusage.ru_nvcsw));
       table->field[6]->set_notnull();
@@ -650,7 +650,7 @@ int PROFILING::fill_statistics_info(THD 
       /* TODO: Add context switch info for non-BSD systems */
 #endif
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
       table->field[8]->store((uint32)(entry->rusage.ru_inblock -
                              previous->rusage.ru_inblock));
       table->field[8]->set_notnull();
@@ -661,7 +661,7 @@ int PROFILING::fill_statistics_info(THD 
       /* TODO: Add block IO info for non-BSD systems */
 #endif
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
       table->field[10]->store((uint32)(entry->rusage.ru_msgsnd -
                              previous->rusage.ru_msgsnd), true);
       table->field[10]->set_notnull();
@@ -672,7 +672,7 @@ int PROFILING::fill_statistics_info(THD 
       /* TODO: Add message info for non-BSD systems */
 #endif
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
       table->field[12]->store((uint32)(entry->rusage.ru_majflt -
                              previous->rusage.ru_majflt), true);
       table->field[12]->set_notnull();
@@ -683,7 +683,7 @@ int PROFILING::fill_statistics_info(THD 
       /* TODO: Add page fault info for non-BSD systems */
 #endif
 
-#ifdef HAVE_GETRUSAGE
+#if defined (HAVE_GETRUSAGE) && !defined (__HAIKU__)
       table->field[14]->store((uint32)(entry->rusage.ru_nswap -
                              previous->rusage.ru_nswap), true);
       table->field[14]->set_notnull();
