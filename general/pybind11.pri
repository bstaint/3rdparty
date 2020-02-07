PYBIND11_DIR = $$PWD/pybind11
PYTHON_DIR = D:/Develop/Python38

INCLUDEPATH += \
        $$PYTHON_DIR/include \
        $$PYBIND11_DIR/include

LIBS += -L$$PYTHON_DIR/libs
