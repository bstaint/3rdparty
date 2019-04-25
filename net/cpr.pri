CPR_DIR = $$PWD/cpr
CURL_DIR = $$PWD/libcurl

INCLUDEPATH += $$CPR_DIR/include

LIBS += \
    -L$$CURL_DIR/lib -L$$CURL_DIR/bin \
    -L$$CPR_DIR/lib \
    -llibcurl
    
CONFIG(debug, debug|release) {
  LIBS += -L$$CPR_DIR/lib -lcpr_d
} else {
	LIBS += -L$$CPR_DIR/lib -lcpr
}