WINLAMB_DIR = $$PWD/winlamb

DEFINES += _UNICODE

QMAKE_CXXFLAGS -= -Zc:strictStrings

LIBS += -lcomctl32 -lgdi32 -luser32 -lshell32 -lole32 -lcomdlg32
