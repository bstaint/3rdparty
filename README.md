使用
==============

将第三方库目录和pri文件放置在同目录下，在qmake项目中使用：
```
include(E:/3rdParty/gui/win32xx.pri)
```

absl-cpp
```
absl += strings

include(E:/3rdParty/extras/absl.pri)
```

boost
```
boost += system

include(E:/3rdParty/boost.pri)
```

#### xmake相关

```
includes("E:/3rdparty/xmake/option.lua")
includes("E:/3rdparty/xmake/spdlog.lua")
    
target("test")
    set_kind("binary")
    
    if has_config("3rdparty") then
        depend_spdlog()
    end
    
    add_files('main.cpp')
```
