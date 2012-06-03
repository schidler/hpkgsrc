$NetBSD$

--- src/opengl/qgl_p.h.orig	2012-03-14 14:01:13.019136512 +0000
+++ src/opengl/qgl_p.h
@@ -467,7 +467,7 @@ public:
     static inline QGLExtensionFuncs& extensionFuncs(const QGLContext *ctx) { return ctx->d_ptr->group->extensionFuncs(); }
 #endif
 
-#if defined(Q_WS_X11) || defined(Q_WS_MAC) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN) 
+#if defined(Q_WS_X11) || defined(Q_WS_MAC) || defined(Q_WS_QWS) || defined(Q_WS_QPA) || defined(Q_OS_SYMBIAN) || defined(Q_WS_HAIKU)
     static Q_OPENGL_EXPORT QGLExtensionFuncs qt_extensionFuncs;
     static Q_OPENGL_EXPORT QGLExtensionFuncs& extensionFuncs(const QGLContext *);
 #endif
