ABSL_DIR = $$PWD/abseil-cpp

defineReplace(abslExtend) {
    contains(absl, strings) {
        absl *= int128 strings
    }

    contains(absl, synchronization) {
        absl *= base spinlock_wait malloc_internal stacktrace symbolize time synchronization
    }

    return($$absl)
}

defineReplace(abslLibrary) {
    for(var, absl) {
        CONFIG(debug, debug|release) {
            RET *= -labsl_$${var}_d
        } else {
            RET *= -labsl_$${var}
        }
    }
    return($$RET)
}

INCLUDEPATH += $$ABSL_DIR \
        $$CCTZ_DIR/include

DEFINES += NOMINMAX \
           WIN32_LEAN_AND_MEAN \
           _CRT_SECURE_NO_WARNINGS

QMAKE_CXXFLAGS += /wd4005 /wd4068 /wd4244 /wd4267 /wd4800

absl = $$abslExtend()

LIBS += -L$$ABSL_DIR/lib $$abslLibrary()
