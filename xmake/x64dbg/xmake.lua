-- @author      bstaint
-- @file        debug.lua
--

-- define task
task("debug")

    -- set category
    set_category("plugin")

    -- on run
    on_run("main")

    -- set menu
    set_menu {
                -- usage
                usage = "xmake debug"

                -- description
            ,   description = "Run target from x64dbg."
            }
