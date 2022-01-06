--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-present, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        main.lua
--

-- imports
import("core.base.option")
import("core.base.task")
import("core.project.config")
import("clang.compile_flags")
import("debug.x64dbg")

function makers()

    -- the maps
    return
    {
         x64dbg           = x64dbg.make
        ,compile_flags    = compile_flags.make
    }
end

-- make project
function _make(kind)

    local maps = makers()
    assert(maps[kind], "the project kind(%s) is not supported!", kind)

    -- make it
    maps[kind](option.get("outputdir"))
end

-- main
function main()

    -- config it first
    task.run("config")

    -- make project
    _make(option.get("kind"))

    -- trace
    cprint("${color.success}create ok!")
end
