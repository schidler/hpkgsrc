$NetBSD$

--- plugins/video/H.263-1998/h263-1998.cxx.orig	2011-12-04 20:11:24.617287000 +0000
+++ plugins/video/H.263-1998/h263-1998.cxx
@@ -688,7 +688,7 @@ int H263_RFC2190_EncoderContext::EncodeF
 
   _inputFrame->data[1] = _inputFrame->data[0] + size;
   _inputFrame->data[2] = _inputFrame->data[1] + (size / 4);
-  _inputFrame->pict_type = (flags && forceIFrame) ? FF_I_TYPE : 0;
+  _inputFrame->pict_type = (flags && forceIFrame) ? AV_PICTURE_TYPE_I : AV_PICTURE_TYPE_NONE;
 
   currentMb = 0;
   currentBytes = 0;
@@ -885,7 +885,7 @@ int H263_RFC2429_EncoderContext::EncodeF
   _inputFrame->data[0] = _inputFrameBuffer + FF_INPUT_BUFFER_PADDING_SIZE;
   _inputFrame->data[1] = _inputFrame->data[0] + size;
   _inputFrame->data[2] = _inputFrame->data[1] + (size / 4);
-  _inputFrame->pict_type = (flags && forceIFrame) ? FF_I_TYPE : 0;
+  _inputFrame->pict_type = (flags && forceIFrame) ? AV_PICTURE_TYPE_I : AV_PICTURE_TYPE_NONE;
  
   _txH263PFrame->BeginNewFrame();
   _txH263PFrame->SetTimestamp(srcRTP.GetTimestamp());
