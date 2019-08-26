NONE_DIR = $$PWD/none

INCLUDEPATH += $$NONE_DIR/src

CONFIG( debug, debug|release ) {
	LIBS += \
		-L$$NONE_DIR/build/debug
} else {
	LIBS += \
		-L$$NONE_DIR/build/release
}

contains(DEFINES, USE_UNONE_STATIC) {
    LIBS += \
		-lAdvapi32 \
		-lUser32 \
		-lunonestatic
} else {
    LIBS += -lunone
}
