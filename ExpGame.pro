#-------------------------------------------------
#
# Project created by QtCreator 2014-03-11T13:19:13
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Game2048
TEMPLATE = app
QMAKE_CXXFLAGS += -std=c++11

SOURCES += main.cpp\
        gui/mainwindow.cpp \
    core/tile.cpp \
    core/board.cpp \
    core/game.cpp \
    gui/qgameboard.cpp \
    gui/qtile.cpp \
    gui/qresetbutton.cpp \
    core/observer.cpp \
    core/subject.cpp \
    gui/qgameoverwindow.cpp

HEADERS  += gui/mainwindow.h \
    core/tile.h \
    core/board.h \
    core/game.h \
    gui/qgameboard.h \
    gui/qtile.h \
    gui/qresetbutton.h \
    core/observer.h \
    core/subject.h \
    gui/qgameoverwindow.h \
    gui/qwinwindow.h

APPSHAREDIR = /usr/share/Game2048
unix:!android: target.path = /usr/bin

desktop.path = /usr/share/applications/
desktop.files = $$PWD/install/Game2048.desktop

icon.path =/usr/share/icons
icon.files=$$PWD/install/Game2048.png

!isEmpty(target.path): INSTALLS += target icon desktop
