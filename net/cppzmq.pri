CPPZMQ_DIR = $$PWD/cppzmq
LIBZMQ_DIR = $$PWD/libzmq

INCLUDEPATH += \
     $$LIBZMQ_DIR \
     $$CPPZMQ_DIR

LIBS += \
    -L$$LIBZMQ_DIR \
    -llibzmq-v141-mt-4_3_3
