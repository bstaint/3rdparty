ʹ��
==============

����������Ŀ¼��pri�ļ�������ͬĿ¼�£���qmake��Ŀ��ʹ�ã�
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

#### xmake���

```
includes("E:/3rdparty/xmake/spdlog.lua")
    
target("test")
    set_kind("binary")
    
    add_deps("spdlog")
    
    add_files('main.cpp')
```
