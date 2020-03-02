SFML_DIR = $$PWD/SFML

DEFINES += _UNICODE

contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64

INCLUDEPATH += $$SFML_DIR/$$ARCH/include

LIBS += \
        -L$$SFML_DIR/$$ARCH/lib \
        -L$$SFML_DIR/$$ARCH/bin \
    
CONFIG( debug, debug|release ) {
		LIBS += -lsfml-graphics-d -lsfml-audio-d -lsfml-window-d -lsfml-system-d
} else {
		LIBS += -lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system
}
