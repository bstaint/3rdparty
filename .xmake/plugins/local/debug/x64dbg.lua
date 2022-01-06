-- @author      bstaint
-- @file        main.lua
--

-- imports
import("core.base.option")
import("core.project.config")
import("core.project.project")
import("core.platform.platform")

local dir = "D:/Develop/x64dbg/"
local dbg = ""

function _run_x64dbg(targetfile)
    local argv = {}
    if os.exists(targetfile) then
        table.insert(argv, targetfile)
        os.execv(dbg, argv)
    end
end

-- main
function make()
		-- load configure
		config.load()

		if not is_mode("debug") then
		    raise("current project under %s!", config.mode())
		end

		dbg = path.join(dir, ifelse(config.arch() == "x86", "x32/x32dbg.exe", "x64/x64dbg.exe"))
		-- enter the project directory
		os.cd(project.directory())

		-- package all targets
		for targetname, target in pairs(project.targets()) do
				local default = target:get("default")
				if (default == nil or default == true or option.get("all")) and target:get("kind") == "binary" then
						_run_x64dbg(path.absolute(target:targetfile()))
				end
		end
end
