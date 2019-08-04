ZLIB_DIR = $$PWD/zlib

INCLUDEPATH += $$ZLIB_DIR/include

LIBS += -L$$ZLIB_DIR/build

contains(DEFINES, USE_ZLIB_STATIC) {
    LIBS += -lzlibstatic
} else {
    LIBS += -lzlib
}
