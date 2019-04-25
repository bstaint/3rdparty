WIN32XX_DIR = $$PWD/Win32xx

INCLUDEPATH += $$WIN32XX_DIR/include

DEFINES += _UNICODE

LIBS += -lcomctl32 -lgdi32 -luser32
