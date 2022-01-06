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
-- @file        xmake.lua
--

-- define task
task("local")

    -- set category
    set_category("plugin")

    -- on run
    on_run("main")

    -- set menu
    set_menu {
                -- usage
                usage = "xmake local [options] [target]"

                -- description
            ,   description = "Generate the project file."

                -- options
            ,   options =
                {
                    {'k', "kind",      "kv" , "makefile",   "Set the project kind."
                                                        ,   "    - x64dbg"
                                                        ,   "    - compile_flags"
                                                        ,   values = function (complete, opt)
                                                                if not complete then return end

                                                                local values = table.keys(import("main.makers")())
                                                                table.sort(values, function (a, b) return a > b end)
                                                                return values
                                                            end                                                                             }
                ,   {nil, "outputdir", "v"  , "."       ,   "Set the output directory."                                                     }
                }
            }



