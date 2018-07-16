TEMPLATE = subdirs

SUBDIRS = \
    frontend \
    backend_simulator \
    demo

CONFIG += ordered

OTHER_FILES += \
    test-interface.qface
