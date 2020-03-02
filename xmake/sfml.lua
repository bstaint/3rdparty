local sfml = 'E:/3rdParty/gui/SFML'

target("sfml")
    local arch = get_config('arch')

	add_includedirs(path.join(sfml, arch, 'include'), {public = true})
	add_linkdirs(path.join(sfml, arch, 'lib'), {public = true})
    before_run(function (target)
        os.addenv("PATH", path.join(sfml, arch, 'bin'))
    end)
    if is_mode("debug") then
        add_links('sfml-graphics-d', 'sfml-audio-d', 'sfml-window-d', 'sfml-system-d', {public = true})
    else
        add_links('sfml-graphics', 'sfml-audio', 'sfml-window', 'sfml-system', {public = true})
    end
