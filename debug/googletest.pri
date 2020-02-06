GTEST_DIR = $$PWD/googletest

INCLUDEPATH += $$GTEST_DIR/googletest/include

LIBS += -L$$GTEST_DIR/lib \
        -lgtest -lgtest_main
