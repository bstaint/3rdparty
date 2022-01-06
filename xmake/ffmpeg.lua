local ffmpeg = 'E:/3rdParty/parser/ffmpeg'

target("ffmpeg")
    local arch = get_config('arch') or ""

	add_includedirs(path.join(ffmpeg, 'include'), {public = true})
	add_linkdirs(path.join(ffmpeg, 'lib.'..arch), {public = true})
    before_run(function (target)
        os.addenv("PATH", path.join(ffmpeg, 'bin.'..arch))
    end)
    add_links('comctl32', 'gdi32', 'avutil', {public = true})
