$NetBSD$

--- articleview.cc.orig	2010-12-03 21:12:46.045613056 +0000
+++ articleview.cc
@@ -23,6 +23,7 @@
 
 // Phonon headers are a mess. How to include them properly? Send patches if you
 // know.
+#ifndef Q_OS_HAIKU
 #ifdef __WIN32
 #include <Phonon/AudioOutput>
 #include <Phonon/MediaObject>
@@ -30,11 +31,13 @@
 #include <phonon/audiooutput.h>
 #include <phonon/mediaobject.h>
 #endif
+#endif
 
 using std::map;
 using std::list;
 
 /// A phonon-based audio player, created on demand
+#ifndef Q_OS_HAIKU
 struct AudioPlayer
 {
   Phonon::AudioOutput output;
@@ -59,7 +62,7 @@ AudioPlayer & AudioPlayer::instance()
 
   return a;
 }
-
+#endif
 
 ArticleView::ArticleView( QWidget * parent, ArticleNetworkAccessManager & nm,
                           std::vector< sptr< Dictionary::Class > > const & allDictionaries_,
@@ -1013,6 +1016,7 @@ void ArticleView::resourceDownloadFinish
           }
           else
 #endif
+#ifndef Q_WS_HAIKU
           if ( !cfg.preferences.useExternalPlayer )
           {
             // Play via Phonon
@@ -1031,6 +1035,7 @@ void ArticleView::resourceDownloadFinish
           }
           else
           {
+#endif          	
 
             // Use external viewer to play the file
             try
@@ -1053,7 +1058,9 @@ void ArticleView::resourceDownloadFinish
             {
               QMessageBox::critical( this, tr( "GoldenDict" ), tr( "Failed to run a player to play sound file: %1" ).arg( e.what() ) );
             }
+		#ifndef Q_WS_HAIKU            
           }
+        #endif
         }
         else
         {
