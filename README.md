ʹ��
==============

����������Ŀ¼��pri�ļ�������ͬĿ¼�£���qmake��Ŀ��ʹ�ã�
```
include (E:/3rdParty/3rdparty.pri)

add_deps(debug/spdlog)
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
