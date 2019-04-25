OPENGL_DIR = $$PWD/OpenGL

INCLUDEPATH += \
        $$OPENGL_DIR/glew/include \
        $$OPENGL_DIR/glfw/include \
        $$OPENGL_DIR/soil/src \
        $$OPENGL_DIR/glm/glm

LIBS += \
        -L$$OPENGL_DIR/glew/bin/Release/Win32 \
        -L$$OPENGL_DIR/glew/lib/Release/Win32 \
        -L$$OPENGL_DIR/glfw/lib-vc2015 \
        -L$$OPENGL_DIR/soil/lib \
        -lopengl32 -lglew32 -lglfw3 \
        -luser32 -lgdi32 -lshell32
