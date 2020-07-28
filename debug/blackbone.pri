BLACKBONE_DIR = $$PWD/Blackbone

QMAKE_CXXFLAGS += /std:c++17

INCLUDEPATH += $$BLACKBONE_DIR/src \
               $$BLACKBONE_DIR/src/3rd_party
SOURCES += \
        $$BLACKBONE_DIR/src/BlackBone/Symbols/SymbolData.cpp \
        $$BLACKBONE_DIR/src/BlackBone/Symbols/SymbolLoader.cpp \
        $$BLACKBONE_DIR/src/BlackBone/Symbols/PDBHelper.cpp

contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64

LIBS += \
        -L$$BLACKBONE_DIR/lib/$$ARCH \
        -L$$BLACKBONE_DIR/src/3rd_party/DIA/lib \
        -ldiaguids

CONFIG( debug, debug|release ) {
        LIBS += -lBlackBone_d
} else {
        LIBS += -lBlackBone
}
