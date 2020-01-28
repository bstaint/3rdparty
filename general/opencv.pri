OPENCV_DIR = $$PWD/opencv/build

INCLUDEPATH += $$OPENCV_DIR/include

LIBS += \
        -L$$OPENCV_DIR/x64/vc15/bin \
        -L$$OPENCV_DIR/x64/vc15/lib \
        -lopencv_world410d