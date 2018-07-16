TARGET = qtivi-test
TEMPLATE = app

QT += qml quick
CONFIG += c++11
CONFIG -= app_bundle
DESTDIR = ../

LIBS += -L$$OUT_PWD/../ -l$$qtLibraryTarget(QtIviSimpleTest)
INCLUDEPATH += $$OUT_PWD/../frontend

SOURCES += main.cpp

RESOURCES += qml.qrc

QMAKE_RPATHDIR += $ORIGIN

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += install_ok  # Do not cargo-cult this!
target.path = ../install
INSTALLS += target
