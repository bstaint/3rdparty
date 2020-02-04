DIRECTX_DIR = $$PWD/DirectX9

INCLUDEPATH += $$DIRECTX_DIR/Include

contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64

LIBS += \
    -L$$DIRECTX_DIR/Lib/$$ARCH \
    -ld3d9 -ld3dx9
