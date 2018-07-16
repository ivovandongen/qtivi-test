TARGET = $$qtLibraryTarget(QtIviSimpleTest)
TEMPLATE = lib
DESTDIR = ..
macos: CONFIG += debug_and_release build_all
QT_FOR_CONFIG += ivicore
!qtConfig(ivigenerator): error("No ivigenerator available")
QT += ivicore ivicore-private qml quick

DEFINES += QT_BUILD_IVI_SIMPLE_TEST_LIB
CONFIG += ivigenerator
QFACE_SOURCES = ../test-interface.qface
CONFIG += install_ok  # Do not cargo-cult this!
target.path = ../install
INSTALLS += target

