LIBPECONV_DIR = $$PWD/libpeconv

INCLUDEPATH += $$LIBPECONV_DIR/libpeconv/include

LIBS += -L$$LIBPECONV_DIR/lib
LIBS += -llibpeconv_d
