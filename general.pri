GENERAL_DIR = $$PWD

defineReplace(generalExtendIncludes) {
    for(var, generals) {
        inc = $$GENERAL_DIR/$${var}
        exists($$inc/inc) {
             RET *= $$inc/inc
        } else:exists($$inc/include) {
             RET *= $$inc/include
        }
    }

    return($$RET)
}

defineReplace(generalExtendLibs) {
    for(var, generals) {
        inc = $$GENERAL_DIR/$${var}/lib
        exists($$inc): RET *= -L$$inc
    }

    return($$RET)
}

INCLUDEPATH *= $$generalExtendIncludes()

LIBS *= $$generalExtendLibs()

message($$INCLUDEPATH)
message($$LIBS)
