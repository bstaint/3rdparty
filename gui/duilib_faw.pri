DUILIB_DIR = $$PWD/DuiLib_Faw

DEFINES += _UNICODE UNICODE UILIB_STATIC

CONFIG += c++17

LIBS += \
    -L$$DUILIB_DIR/lib \
    -lGdi32

CONFIG(debug, debug|release) {
  LIBS += -lDuiLib_d
} else {
  LIBS += -lDuiLib
}
