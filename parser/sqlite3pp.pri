SQLITE_DIR = $$PWD/sqlite
SQLITE3PP_DIR = $$PWD/sqlite3pp

INCLUDEPATH += \
    $$SQLITE_DIR/src/ \
    $$SQLITE3PP_DIR/headeronly_src
    
contains(QT_ARCH, i386): ARCH = x86
else: ARCH = x64
    
LIBS += \
    -L$$SQLITE_DIR/bin/$$ARCH \
    -lsqlite3