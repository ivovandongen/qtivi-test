TEMPLATE=lib
TARGET = $$qtLibraryTarget(test_ivi_simple)
macos: CONFIG += debug_and_release build_all

QT_FOR_CONFIG += ivicore
!qtConfig(ivigenerator): error("No ivigenerator available")

LIBS += -L$$OUT_PWD/../ -l$$qtLibraryTarget(QtIviSimpleTest)
DESTDIR = ../qtivi
CONFIG += warn_off
INCLUDEPATH += $$OUT_PWD/../frontend
QT += core ivicore
CONFIG += ivigenerator plugin
QFACE_FORMAT = backend_simulator
QFACE_SOURCES = ../test-interface.qface
PLUGIN_TYPE = qtivi
PLUGIN_EXTENDS = qtivi
PLUGIN_CLASS_NAME = SimpleTestPlugin
CONFIG += install_ok  # Do not cargo-cult this!
target.path = ../install
INSTALLS += target

