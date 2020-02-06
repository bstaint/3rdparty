for(3rd, 3rdparty) {
    3rd_pri = $$PWD/$$lower($$3rd".pri")
    3rd_paths = $$split(3rd, "/")
    3rd_name = $$lower($$member(3rd_paths, 1))

    origin_libs = $$LIBS
    origin_includepath = $$INCLUDEPATH
    exists ($$3rd_pri) {
        include ($$3rd_pri)
    }

    isEqual(INCLUDEPATH, $$origin_includepath) {
        exists($$PWD/$$3rd/include) {
             INCLUDEPATH *= $$PWD/$$3rd/include
        } else:exists($$inc/inc) {
             INCLUDEPATH *= $$PWD/$$3rd/inc
        } else:exists($$inc/src) {
             INCLUDEPATH *= $$PWD/$$3rd/src
        } else {
             INCLUDEPATH *= $$PWD/$$3rd
        }
    }


    equals(LIBS, $$origin_libs) {
        exists($$PWD/$$3rd/lib) {
             LIBS *= -L$$PWD/$$3rd/lib
        }
    }
}

message("INCLUDEPATH:" $$INCLUDEPATH)
message("LIBS:" $$LIBS)
