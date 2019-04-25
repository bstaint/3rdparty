WINLAMB_DIR = $$PWD/winlamb

INCLUDEPATH += $$WINLAMB_DIR

DEFINES += _UNICODE

QMAKE_CXXFLAGS -= -Zc:strictStrings

LIBS += -lcomctl32 -lgdi32 -luser32 -lshell32 -lole32 -lcomdlg32
