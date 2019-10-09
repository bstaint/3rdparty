ABSL_DIR = $$PWD/abseil-cpp

defineReplace(abslExtend) {

    contains(absl, synchronization) {
        absl *= base spinlock_wait stacktrace symbolize graphcycles_internal time synchronization
    }

    contains(absl, graphcycles_internal) {
        absl *= malloc_internal graphcycles_internal
    }

    contains(absl, strings) {
        absl *= throw_delegate strings
    }

    contains(absl, time) {
        absl *= int128 time_zone time
    }

    contains(absl, base) {
        absl *= raw_logging_internal base
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

INCLUDEPATH += $$ABSL_DIR

DEFINES += NOMINMAX \
           WIN32_LEAN_AND_MEAN \
           _CRT_SECURE_NO_WARNINGS

QMAKE_CXXFLAGS += /wd4005 /wd4068 /wd4244 /wd4267 /wd4800

absl = $$abslExtend()

LIBS += -L$$ABSL_DIR/lib $$abslLibrary()
