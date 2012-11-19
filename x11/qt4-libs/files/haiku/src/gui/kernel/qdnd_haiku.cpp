/****************************************************************************
**
** Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies).
** All rights reserved.
** Contact: Nokia Corporation (qt-info@nokia.com)
**
** This file is part of the QtGui module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** No Commercial Usage
** This file contains pre-release code and may not be distributed.
** You may use this file in accordance with the terms and conditions
** contained in the Technology Preview License Agreement accompanying
** this package.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU Lesser General Public License version 2.1 requirements
** will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** In addition, as a special exception, Nokia gives you certain additional
** rights.  These rights are described in the Nokia Qt LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** If you have questions regarding the use of this file, please contact
** Nokia at qt-info@nokia.com.
**
**
**
**
**
**
**
**
** $QT_END_LICENSE$
**
****************************************************************************/

#include "qapplication.h"

#ifndef QT_NO_DRAGANDDROP

#include "qdebug.h"

#include "qwidget.h"
#include "qdatetime.h"
#include "qbitmap.h"
#include "qcursor.h"
#include "qevent.h"
#include "qpainter.h"
#include "qdnd_p.h"

#include <QCursor>

QT_BEGIN_NAMESPACE

static Qt::DropAction global_accepted_action = Qt::MoveAction;
static Qt::DropActions possible_actions = Qt::IgnoreAction;

static QDrag *drag_object;
static bool qt_haiku_dnd_dragging = false;


static Qt::KeyboardModifiers oldstate;

void QDragManager::updatePixmap() { }
void QDragManager::timerEvent(QTimerEvent *) { }
void QDragManager::move(const QPoint&) { }
void QDragManager::updateCursor() { }

bool QDragManager::eventFilter(QObject *o, QEvent *e)
{
 if (beingCancelled) {
        return false;
    }
    if (!o->isWidgetType())
        return false;

    switch(e->type()) {
        case QEvent::MouseButtonPress:
        {
        }
        case QEvent::MouseMove:
        {
            if (!object) { //#### this should not happen
                qWarning("QDragManager::eventFilter: No object");
                return true;
            }
            QDragManager *manager = QDragManager::self();
            QMimeData *dropData = manager->object ? manager->dragPrivate()->data : manager->dropData;
            if (manager->object)
                possible_actions =  manager->dragPrivate()->possible_actions;
            else
                possible_actions = Qt::IgnoreAction;

            QMouseEvent *me = (QMouseEvent *)e;

            if (me->buttons()) {
                Qt::DropAction prevAction = global_accepted_action;
                QWidget *cw = QApplication::widgetAt(me->globalPos());                
                // map the Coords relative to the window.
                if (!cw)
                    return true;

                while (cw && !cw->acceptDrops() && !cw->isWindow())
                    cw = cw->parentWidget();

                bool oldWillDrop = willDrop;
                if (object->target() != cw) {
                    if (object->target()) {
                        QDragLeaveEvent dle;
                        QApplication::sendEvent(object->target(), &dle);
                        willDrop = false;
                        global_accepted_action = Qt::IgnoreAction;
                        if (oldWillDrop != willDrop)
                            updateCursor();
                        object->d_func()->target = 0;
                    }
                    if (cw && cw->acceptDrops()) {
                        object->d_func()->target = cw;
                        QDragEnterEvent dee(cw->mapFromGlobal(me->globalPos()), possible_actions, dropData,
                                            me->buttons(), me->modifiers());
                        QApplication::sendEvent(object->target(), &dee);
                        willDrop = dee.isAccepted() && dee.dropAction() != Qt::IgnoreAction;
                        global_accepted_action = willDrop ? dee.dropAction() : Qt::IgnoreAction;
                        if (oldWillDrop != willDrop)
                            updateCursor();
                    }
                } else if (cw) {
                    QDragMoveEvent dme(cw->mapFromGlobal(me->globalPos()), possible_actions, dropData,
                                       me->buttons(), me->modifiers());
                    if (global_accepted_action != Qt::IgnoreAction) {
                        dme.setDropAction(global_accepted_action);
                        dme.accept();
                    }
                    QApplication::sendEvent(cw, &dme);
                    willDrop = dme.isAccepted();
                    global_accepted_action = willDrop ? dme.dropAction() : Qt::IgnoreAction;
                    if (oldWillDrop != willDrop) {
                        updatePixmap();
                        updateCursor();
                    }
                }
                if (global_accepted_action != prevAction)
                    emitActionChanged(global_accepted_action);
            }
            return true; // Eat all mouse events
        }

        case QEvent::MouseButtonRelease:
        {
            qApp->removeEventFilter(this);
#ifndef QT_NO_CURSOR
            if (restoreCursor) {
                QApplication::restoreOverrideCursor();
                willDrop = false;
                restoreCursor = false;
            }
#endif
            if (object && object->target()) {

                QMouseEvent *me = (QMouseEvent *)e;

                QDragManager *manager = QDragManager::self();
                QMimeData *dropData = manager->object ? manager->dragPrivate()->data : manager->dropData;

                QDropEvent de(object->target()->mapFromGlobal(me->globalPos()), possible_actions, dropData,
                              me->buttons(), me->modifiers());
                QApplication::sendEvent(object->target(), &de);
                if (de.isAccepted())
                    global_accepted_action = de.dropAction();
                else
                    global_accepted_action = Qt::IgnoreAction;

                if (object)
                    object->deleteLater();
                drag_object = object = 0;
            }
            eventLoop->exit();
            return true; // Eat all mouse events
        }

        default:
             break;
    }
    return false;
}

Qt::DropAction QDragManager::drag(QDrag *o)
{	
    if (object == o || !o || !o->source()) {
         return Qt::IgnoreAction;
    }

    if (object) {
        cancel();
        qApp->removeEventFilter(this);
        beingCancelled = false;
    }

    object = drag_object = o;

    oldstate = Qt::NoModifier; // #### Should use state that caused the drag
    willDrop = false;

    object->d_func()->target = 0;

    qApp->installEventFilter(this);

    global_accepted_action = defaultAction(dragPrivate()->possible_actions, Qt::NoModifier);
    qt_haiku_dnd_dragging = true;

    eventLoop = new QEventLoop;
    // block
    (void) eventLoop->exec(QEventLoop::AllEvents);
    delete eventLoop;
    eventLoop = 0;

    qt_haiku_dnd_dragging = false;

    return global_accepted_action;
}


void QDragManager::cancel(bool deleteSource)
{
    beingCancelled = true;

    if (object->target()) {
        QDragLeaveEvent dle;
        QApplication::sendEvent(object->target(), &dle);
    }

    if (drag_object) {
        if (deleteSource)
            object->deleteLater();
        drag_object = object = 0;
    }

    global_accepted_action = Qt::IgnoreAction;
}


void QDragManager::drop()
{	
}

QVariant QDropData::retrieveData_sys(const QString &mimetype, QVariant::Type type) const
{
    if (!drag_object)
        return QVariant();
    QByteArray data =  drag_object->mimeData()->data(mimetype);
    if (type == QVariant::String)
        return QString::fromUtf8(data);
    return data;
}

bool QDropData::hasFormat_sys(const QString &format) const
{
    return formats().contains(format);
}

QStringList QDropData::formats_sys() const
{
    if (drag_object)
        return drag_object->mimeData()->formats();
    return QStringList();
}

QT_END_NAMESPACE
#endif // QT_NO_DRAGANDDROP
