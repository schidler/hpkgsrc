$NetBSD$

--- src/tools/uic/qclass_lib_map.h.orig	2011-12-08 05:06:03.063963136 +0000
+++ src/tools/uic/qclass_lib_map.h
@@ -752,6 +752,8 @@ QT_CLASS_LIB(QToolTip, QtGui, qtooltip.h
 QT_CLASS_LIB(QWhatsThis, QtGui, qwhatsthis.h)
 QT_CLASS_LIB(QWidgetData, QtGui, qwidget.h)
 QT_CLASS_LIB(QWidget, QtGui, qwidget.h)
+QT_CLASS_LIB(QtHaikuView, QtGui, qwidget_haiku.h)
+QT_CLASS_LIB(QtHaikuWindow, QtGui, qwidget_haiku.h)
 QT_CLASS_LIB(QWidgetAction, QtGui, qwidgetaction.h)
 QT_CLASS_LIB(QWidgetList, QtGui, qwindowdefs.h)
 QT_CLASS_LIB(QWidgetMapper, QtGui, qwindowdefs.h)
@@ -967,6 +969,8 @@ QT_CLASS_LIB(QSymbianEvent, QtGui, qsymb
 QT_CLASS_LIB(QCompleter, QtGui, qcompleter.h)
 QT_CLASS_LIB(QDesktopServices, QtGui, qdesktopservices.h)
 QT_CLASS_LIB(QSystemTrayIcon, QtGui, qsystemtrayicon.h)
+QT_CLASS_LIB(QSystemTrayIconLooper, QtGui, qsystemtrayicon_haiku.h)
+QT_CLASS_LIB(QSystemTrayIconSys, QtGui, qsystemtrayicon_haiku.h)
 QT_CLASS_LIB(QUndoGroup, QtGui, qundogroup.h)
 QT_CLASS_LIB(QUndoCommand, QtGui, qundostack.h)
 QT_CLASS_LIB(QUndoStack, QtGui, qundostack.h)
@@ -975,6 +979,7 @@ QT_CLASS_LIB(QCDEStyle, QtGui, qcdestyle
 QT_CLASS_LIB(QCleanlooksStyle, QtGui, qcleanlooksstyle.h)
 QT_CLASS_LIB(QCommonStyle, QtGui, qcommonstyle.h)
 QT_CLASS_LIB(QGtkStyle, QtGui, qgtkstyle.h)
+QT_CLASS_LIB(QHaikuStyle, QtGui, qhaikustyle.h)
 QT_CLASS_LIB(QMacStyle, QtGui, qmacstyle_mac.h)
 QT_CLASS_LIB(QMotifStyle, QtGui, qmotifstyle.h)
 QT_CLASS_LIB(QPlastiqueStyle, QtGui, qplastiquestyle.h)
