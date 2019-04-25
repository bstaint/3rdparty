DUILIB_DIR = $$PWD/DuiLib_Faw

INCLUDEPATH += $$DUILIB_DIR

DEFINES += _UNICODE UNICODE UILIB_STATIC

QMAKE_CXXFLAGS += /std:c++17

LIBS += -lGdi32

CONFIG(debug, debug|release) {
  LIBS += -L$$DUILIB_DIR/lib -lDuiLib_d
} else {
  LIBS += -L$$DUILIB_DIR/lib -lDuiLib
}
