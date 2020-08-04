DETOURS_DIR = $$PWD/Detours

INCLUDEPATH += $$DETOURS_DIR/include

contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64

LIBS += \
    -L$$DETOURS_DIR/lib.$$ARCH/ \
    -ldetours
