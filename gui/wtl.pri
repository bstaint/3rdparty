WTL_DIR = $$PWD/WTL10

RC_INCLUDEPATH += $$WTL_DIR/Include
INCLUDEPATH += $$WTL_DIR/Include

DEFINES += _UNICODE \
           _EMBEDDED_MANIFEST

LIBS += -lcomctl32 -lgdi32 -luser32
