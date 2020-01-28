DETOURS_DIR = $$PWD/Detours

INCLUDEPATH += $$DETOURS_DIR/include

contains(QT_ARCH, i386): ARCH = X86
else: ARCH = X64

LIBS += \
        -L$$DETOURS_DIR/lib.$$ARCH/ \
        -ldetours
