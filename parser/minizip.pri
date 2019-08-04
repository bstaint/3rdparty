MINIZIP_DIR = $$PWD/minizip

INCLUDEPATH += $$MINIZIP_DIR

LIBS += -ladvapi32

CONFIG(debug, debug|release) {
    LIBS += -L$$MINIZIP_DIR/build \
            -lminizipd
} else {
    LIBS += -L$$MINIZIP_DIR/build \
            -lminizip
}
