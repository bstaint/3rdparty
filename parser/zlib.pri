ZLIB_DIR = $$PWD/zlib

INCLUDEPATH += $$ZLIB_DIR/include

LIBS += \
    -L$$ZLIB_DIR/lib \
    -L$$ZLIB_DIR/bin \
    -lzlib