ʹ��
==============

����������Ŀ¼��pri�ļ�������ͬĿ¼�£���qmake��Ŀ��ʹ�ã�
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

#### xmake���

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
