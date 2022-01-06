local win32xx = 'E:/3rdParty/gui/Win32xx'

target("win32xx")
    set_kind("phony")
    add_defines('_UNICODE', 'UNICODE', {public = true})
    add_includedirs(path.join(win32xx, 'include'), {public = true})
    add_links('comctl32', 'gdi32', 'user32', {public = true})
