SFML_DIR = $$PWD/SFML

DEFINES += _UNICODE

LIBS += \
        -L$$SFML_DIR/lib \
        -L$$SFML_DIR/bin \
    
CONFIG( debug, debug|release ) {
		LIBS += -lsfml-graphics-d -lsfml-audio-d -lsfml-window-d -lsfml-system-d
} else {
		LIBS += -lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system
}
