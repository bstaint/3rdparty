local WindowsSdkVerBinPath = 'D:\\Develop\\msvc2019\\Windows Kits\\10\\bin\\10.0.18362.0\\'
local VCToolsRedistDir = 'D:\\Develop\\msvc2019\\VC\\Redist\\MSVC\\14.27.29016\\'

rule("msvc.debug")
    after_load(function (target)
        local arch = get_config('arch')
        -- is debug mode now? xmake f -m debug
		if is_mode("debug") then
            target:add("runenvs", "PATH",
                        WindowsSdkVerBinPath..arch.."\\ucrt",
                        VCToolsRedistDir.."debug_nonredist\\"..arch.."\\Microsoft.VC142.DebugCRT")
            target:set("symbols", "debug")
            target:add("cxflags", "/MDd")
		elseif is_mode("release") then
            target:set("optimize", "fastest")
            target:set("strip", "all")
            target:add("cxflags", "/MD")
		end
    end)
