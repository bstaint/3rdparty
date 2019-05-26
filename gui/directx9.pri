DIRECTX_DIR = $$PWD/DirectX9

INCLUDEPATH += $$DIRECTX_DIR/Include

win32:LIBS += -L$$DIRECTX_DIR/Lib/x86
else:LIBS += -L$$DIRECTX_DIR/Lib/x64

LIBS += -ld3d9 -ld3dx9
