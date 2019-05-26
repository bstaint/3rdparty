SDL_DIR = $$PWD/SDL2

INCLUDEPATH += $$SDL_DIR/include

DEFINES += _UNICODE UNICODE

win32:LIBS += -L$$SDL_DIR/lib/x86
else:LIBS += -L$$SDL_DIR/lib/x64

LIBS +=  -lSDL2main -lSDL2
