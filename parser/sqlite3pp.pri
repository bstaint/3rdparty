SQLITE_DIR = $$PWD/sqlite
SQLITE3PP_DIR = $$PWD/sqlite3pp

INCLUDEPATH += \
    $$SQLITE_DIR/src/ \
    $$SQLITE3PP_DIR/headeronly_src
    
win32 {
    contains(QMAKE_TARGET.arch, x86_64) {
        LIBS += -L$$SQLITE_DIR/bin/x64/
    } else {
        LIBS += -L$$SQLITE_DIR/bin/x86/
    }
    
    LIBS += -lsqlite3
}
