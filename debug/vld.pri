VLD_DIR = $$PWD/vld

CONFIG( debug, debug|release ) {
		INCLUDEPATH += $$VLD_DIR/include

		LIBS += \
		-L$$VLD_DIR/lib/Win32 \
		-L$$VLD_DIR/bin/Win32 \
		-lvld
}

    
