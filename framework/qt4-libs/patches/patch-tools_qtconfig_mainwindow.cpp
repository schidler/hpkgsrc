$NetBSD$

--- tools/qtconfig/mainwindow.cpp.orig	2012-03-14 14:01:12.065798144 +0000
+++ tools/qtconfig/mainwindow.cpp
@@ -384,7 +384,7 @@ MainWindow::MainWindow()
 
     ui->rtlExtensionsCheckBox->setChecked(settings.value(QLatin1String("useRtlExtensions"), false)
                                           .toBool());
-
+#ifndef Q_WS_HAIKU
 #ifdef Q_WS_X11
     QString settingsInputStyle = settings.value(QLatin1String("XIMInputStyle")).toString();
     if (!settingsInputStyle.isEmpty())
@@ -393,6 +393,7 @@ MainWindow::MainWindow()
     ui->inputStyleCombo->hide();
     ui->inputStyleLabel->hide();
 #endif
+#endif
 
 #if defined(Q_WS_X11) && !defined(QT_NO_XIM)
     QStringList inputMethodCombo = QInputContextFactory::keys();
@@ -412,6 +413,8 @@ MainWindow::MainWindow()
         inputMethodComboIndex = 0;
     ui->inputMethodCombo->addItems(inputMethodCombo);
     ui->inputMethodCombo->setCurrentIndex(inputMethodComboIndex);
+#elif defined(Q_WS_HAIKU)
+    ui->inputMethodCombo->hide();
 #else
     ui->inputMethodCombo->hide();
     ui->inputMethodLabel->hide();
