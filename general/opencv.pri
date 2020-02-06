OPENCV_DIR = $$PWD/opencv/build

win32 {
    contains(QMAKE_TARGET.arch, x86_64) {
        LIBS += \
                -L$$OPENCV_DIR/x64/vc15/bin \
                -L$$OPENCV_DIR/x64/vc15/lib \
                -lopencv_world410d
    }
}
