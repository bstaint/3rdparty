MINIZIP_DIR = $$PWD/minizip

LIBS += \
    -L$$MINIZIP_DIR/build \
    -ladvapi32

CONFIG(debug, debug|release) {
    LIBS += -lminizipd
} else {
    LIBS += -lminizip
}
