FFMPEG_DIR = $$PWD/ffmpeg

INCLUDEPATH += $$FFMPEG_DIR/include

LIBS += \
        -L$$FFMPEG_DIR/lib \
        -L$$FFMPEG_DIR/bin \
        -lavformat -lavcodec -lavutil
