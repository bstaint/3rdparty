SFML_DIR = $$PWD/SFML

INCLUDEPATH += $$SFML_DIR/include

contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64

LIBS += \
		-L$$SFML_DIR/lib/$$ARCH
    
CONFIG( debug, debug|release ) {
		LIBS += -lsfml-graphics-d -lsfml-audio-d -lsfml-window-d -lsfml-system-d
} else {
		LIBS += -lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system
}

DEFINES += _UNICODE