--    includes("E:/3rdparty/xmake/option.lua")
--    includes("E:/3rdparty/xmake/spdlog.lua")
--
--    if has_config("3rdparty") then
--        depend_spdlog()
--    end
--
function depend_spdlog()
    local spdlog = path.join(get_config("3rdparty"), 'debug', 'spdlog')
    
    add_includedirs(path.join(spdlog, 'include'))
end