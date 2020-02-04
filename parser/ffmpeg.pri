FFMPEG_DIR = $$PWD/ffmpeg

INCLUDEPATH += $$FFMPEG_DIR/include

contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64

LIBS += \
        -L$$FFMPEG_DIR/lib \
        -L$$FFMPEG_DIR/bin.$$ARCH \
        -lavformat -lavcodec -lavutil

