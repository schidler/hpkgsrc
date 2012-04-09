$NetBSD$

--- src/gui/itemviews/qfileiconprovider.cpp.orig	2011-12-08 05:06:02.060030976 +0000
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
@@ -389,6 +396,33 @@ QIcon QFileIconProviderPrivate::getMacIc
 
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
 
 
@@ -420,6 +454,10 @@ QIcon QFileIconProvider::icon(const QFil
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
