local blackbone = 'E:/3rdParty/debug/Blackbone/src'

target("blackbone")
    local arch = get_config('arch') or ""
    
    set_languages("c++17", {public = true})

	add_includedirs(blackbone, path.join(blackbone, '3rd_party'), {public = true})

	add_linkdirs(path.join(blackbone, '..', 'lib', arch), path.join(blackbone, '3rd_party', 'DIA', 'lib'), {public = true})

    add_files(path.join(blackbone, 'BlackBone', 'Symbols', '*.cpp'))

    if is_mode("debug") then
        add_links('BlackBone_d', 'diaguids', {public = true})
    else
        add_links('BlackBone', 'diaguids', {public = true})
    end
