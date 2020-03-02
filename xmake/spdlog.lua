local spdlog = 'E:/3rdParty/debug/spdlog'

target("spdlog")

	add_includedirs(path.join(spdlog, 'include'), {public = true})
