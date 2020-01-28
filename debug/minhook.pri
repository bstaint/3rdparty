MINHOOK_DIR = $$PWD/minhook

INCLUDEPATH += $$MINHOOK_DIR/include

CONFIG( debug, debug|release ) {
    LIBS += -L$$MINHOOK_DIR/lib/debug
} else {
    LIBS += -L$$MINHOOK_DIR/lib/release
}

LIBS += -lMinHook
