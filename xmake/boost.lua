local boost = 'E:/3rdParty/boost'

function add_boost_links(...)
    local debug_ = is_mode("debug") and '-gd' or ''
    local arch = get_config('arch') == 'x86' and 'x32' or 'x64'
    for _, libname in ipairs{...} do
        add_links(format("libboost_%s-vc142-mt%s-%s-1_74", libname, debug_, arch))
    end
end

target("boost")
    local arch = get_config('arch') or ""

    add_cxflags("/EHsc")
	add_includedirs(boost, {public = true})
	add_linkdirs(path.join(boost, 'build', 'lib'), {public = true})
    before_run(function (target)
        os.addenv("PATH", path.join(boost, 'build', 'lib'))
    end)
