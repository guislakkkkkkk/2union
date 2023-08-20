function onCreate()
	setPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping', false)
	
	
	removeLuaScript('scripts/iconBoim.lua')
	removeLuaScript('scripts/introduction.lua')

end

function onDestroy()
	setPropertyFromClass('backend.ClientPrefs', 'data.ghostTapping', true)

end