$NetBSD$

--- src/metadata/ffmpeg_handler.cc.orig	2010-03-25 14:58:10.023330816 +0000
+++ src/metadata/ffmpeg_handler.cc
@@ -89,6 +89,35 @@ static void addFfmpegMetadataFields(Ref<
 
 	Ref<StringConverter> sc = StringConverter::m2i();
     
+	/* Tabs are 4 characters here */
+	typedef struct {const char *avname; metadata_fields_t field;} mapping_t;
+	static const mapping_t mapping[] =
+	{
+		{"title",   M_TITLE},
+		{"artist",  M_ARTIST},
+		{"album",   M_ALBUM},
+		{"date",    M_DATE},
+		{"genre",   M_GENRE},
+		{"comment", M_DESCRIPTION},
+		{"track",   M_TRACKNUMBER},
+		{NULL,      M_MAX},
+	};
+
+	if (!pFormatCtx->metadata)
+		return;
+	for (const mapping_t *m = mapping; m->avname != NULL; m++)
+	{
+		AVMetadataTag *tag = NULL;
+		tag = av_metadata_get(pFormatCtx->metadata, m->avname, NULL,
+			AV_METADATA_DONT_STRDUP_KEY | AV_METADATA_DONT_STRDUP_VAL);
+		if (tag && tag->value && tag->value[0])
+		{
+	    	log_debug("Added metadata %s: %s\n", m->avname, tag->value);
+			item->setMetadata(MT_KEYS[m->field].upnp,
+			sc->convert(tag->value));
+		}
+	}
+	/* Old algorithm (doesn't work with libav >= 0.7)
 	if (strlen(pFormatCtx->title) > 0) 
     {
 	    log_debug("Added metadata title: %s\n", pFormatCtx->title);
@@ -131,6 +160,7 @@ static void addFfmpegMetadataFields(Ref<
         item->setMetadata(MT_KEYS[M_TRACKNUMBER].upnp, 
                           sc->convert(String::from(pFormatCtx->track)));
 	}
+	*/
 }
 
 // ffmpeg library calls
@@ -178,7 +208,7 @@ static void addFfmpegResourceFields(Ref<
 	for(i=0; i<pFormatCtx->nb_streams; i++) 
     {
 		AVStream *st = pFormatCtx->streams[i];
-		if((st != NULL) && (videoset == false) && (st->codec->codec_type == CODEC_TYPE_VIDEO))
+		if((st != NULL) && (videoset == false) && (st->codec->codec_type == AVMEDIA_TYPE_VIDEO))
         {
             if (st->codec->codec_tag > 0)
             {
@@ -209,7 +239,7 @@ static void addFfmpegResourceFields(Ref<
                 *y = st->codec->height;
 			}
 		} 
-		if(st->codec->codec_type == CODEC_TYPE_AUDIO) 
+		if(st->codec->codec_type == AVMEDIA_TYPE_AUDIO) 
         {
 			// Increase number of audiochannels
 			audioch++;
