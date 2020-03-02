使用
==============

将第三方库目录和pri文件放置在同目录下，在qmake项目中使用：
```
3rdparty += \
    debug/spdlog
    debug/vld

include (E:/3rdParty/gui/3rdparty.pri)
```

absl-cpp
```
absl += strings

include (E:/3rdParty/general/abseil-cpp.pri)
```

boost
```
boost += system

include (E:/3rdParty/boost.pri)
```

#### xmake相关

```
includes("E:/3rdparty/xmake/spdlog.lua")
    
target("test")
    set_kind("binary")
    
    add_deps("spdlog")
    
    add_files('main.cpp')
```
