MINHOOK_DIR = $$PWD/minhook

CONFIG( debug, debug|release ) {
    LIBS += -L$$MINHOOK_DIR/lib/debug
} else {
    LIBS += -L$$MINHOOK_DIR/lib/release
}

LIBS += -lMinHook
