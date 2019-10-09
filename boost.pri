BOOST_DIR = $$PWD/boost
BOOST_VER = 1_71
MSVC_VER = vc142

defineReplace(boostLibrary) {
    arch = $$1
    for(var, boost) {
        CONFIG(debug, debug|release) {
            RET *= -llibboost_$${var}-$${MSVC_VER}-mt-gd-$${arch}-$${BOOST_VER}
        } else {
            RET *= -llibboost_$${var}-$${MSVC_VER}-mt-$${arch}-$${BOOST_VER}
        }
    }
    return($$RET)
}


DEFINES += _WIN32_WINNT=0x0601

INCLUDEPATH += $$BOOST_DIR
LIBS += -L$$BOOST_DIR/build/lib

win32 {
    !contains(QMAKE_HOST.arch, x86_64) {
        LIBS += $$boostLibrary("x32")
    } else {
        LIBS += $$boostLibrary("x64")
    }
}
