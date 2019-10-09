VACA_DIR = $$PWD/vaca

INCLUDEPATH += $$VACA_DIR

DEFINES += _UNICODE

LIBS += -L$$VACA_DIR/lib -lvaca

RC_FILE += $$VACA_DIR/examples/Example.rc
