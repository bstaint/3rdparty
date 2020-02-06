VACA_DIR = $$PWD/vaca

DEFINES += _UNICODE

LIBS += -L$$VACA_DIR/lib -lvaca

RC_FILE += $$VACA_DIR/examples/Example.rc
