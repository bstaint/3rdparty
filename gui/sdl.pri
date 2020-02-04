SDL_DIR = $$PWD/SDL2

INCLUDEPATH += $$SDL_DIR/include

DEFINES += _UNICODE UNICODE

contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64

LIBS += \
        -L-L$$SDL_DIR/lib/$$ARCH \
        -lSDL2main -lSDL2

