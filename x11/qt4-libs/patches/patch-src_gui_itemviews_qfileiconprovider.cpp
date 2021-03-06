$NetBSD$

--- src/gui/itemviews/qfileiconprovider.cpp.orig	2012-09-11 01:36:51.007864320 +0000
+++ src/gui/itemviews/qfileiconprovider.cpp
@@ -53,6 +53,11 @@
 #  include <objbase.h>
 #elif defined(Q_WS_MAC)
 #  include <private/qt_cocoa_helpers_mac_p.h>
+#elif defined(Q_WS_HAIKU)
+#  include <AppKit.h>
+#  include <StorageKit.h>
+#  include <InterfaceKit.h>
+#  include <NodeInfo.h>
 #endif
 
 #include <private/qfunctions_p.h>
@@ -98,6 +103,8 @@ public:
     QIcon getWinIcon(const QFileInfo &fi) const;
 #elif defined(Q_WS_MAC)
     QIcon getMacIcon(const QFileInfo &fi) const;
+#elif defined(Q_WS_HAIKU)
+    QIcon getHaikuIcon(const QFileInfo &fi) const;
 #endif
     QFileIconProvider *q_ptr;
     const QString homePath;
@@ -391,6 +398,33 @@ QIcon QFileIconProviderPrivate::getMacIc
 
     return retIcon;
 }
+#elif defined(Q_WS_HAIKU)
+QIcon QFileIconProviderPrivate::getHaikuIcon(const QFileInfo &fi) const
+{
+    QIcon retIcon;
+    
+	BNode node(fi.canonicalFilePath().toUtf8().constData());
+	if (node.InitCheck() == B_OK) {
+		BNodeInfo nodeinfo(&node);
+		
+		BBitmap *hIcon = new BBitmap(BRect(0, 0, 15, 15), B_RGBA32);
+		nodeinfo.GetTrackerIcon(hIcon, B_MINI_ICON);
+		if(hIcon) {
+			QPixmap p = QPixmap::fromHaikuBitmap(hIcon);
+			retIcon.addPixmap(p);
+			delete hIcon;
+		}
+
+		BBitmap *hIconBig = new BBitmap(BRect(0, 0, 31, 31), B_RGBA32);
+		nodeinfo.GetTrackerIcon(hIcon, B_LARGE_ICON);
+		if(hIconBig) {
+			QPixmap p = QPixmap::fromHaikuBitmap(hIconBig);
+			retIcon.addPixmap(p);
+			delete hIconBig;
+		}		
+	}	
+    return retIcon;
+}
 #endif
 
 
@@ -422,6 +456,10 @@ QIcon QFileIconProvider::icon(const QFil
     QIcon icon = d->getWinIcon(info);
     if (!icon.isNull())
         return icon;
+#elif defined Q_WS_HAIKU
+    QIcon icon = d->getHaikuIcon(info);
+    if (!icon.isNull())
+        return icon;
 #endif
     if (info.isRoot())
 #if defined (Q_WS_WIN) && !defined(Q_WS_WINCE)
