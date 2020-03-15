3RDPART_DIR = $$PWD

defineTest(add_deps) {
    unset(repo)
    repo = $$1
    pri_file = $$3RDPART_DIR/$$lower($$repo".pri")
    repos = $$split(repo, "/")
    # name = $$lower($$member(repos, 1))

    origin_libs = $$LIBS
    origin_includepath = $$INCLUDEPATH
    # load pri file
    exists ($$pri_file) {
        include ($$pri_file)
    }

    # check include path
    isEqual(INCLUDEPATH, $$origin_includepath) {
        exists($$3RDPART_DIR/$$repo/include) {
             INCLUDEPATH *= $$3RDPART_DIR/$$repo/include
        } else:exists($$3RDPART_DIR/$$repo/inc) {
             INCLUDEPATH *= $$3RDPART_DIR/$$repo/inc
        } else:exists($$3RDPART_DIR/$$repo/src) {
             INCLUDEPATH *= $$3RDPART_DIR/$$repo/src
        } else {
             INCLUDEPATH *= $$3RDPART_DIR/$$repo
        }
    }

    # check libs path
    equals(LIBS, $$origin_libs) {
        exists($$3RDPART_DIR/$$repo/lib) {
             LIBS *= -L$$3RDPART_DIR/$$repo/lib
        }
    }

    export(HEADERS)
    export(SOURCES)
    export(INCLUDEPATH)
    export(LIBS)
    export(DEFINES)
    export(CONFIG)
}
