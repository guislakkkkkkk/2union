function onCreate()
	setProperty('gfGroup.visible',false)
	
	makeLuaSprite('branco','branco',-270,-270)
	addLuaSprite('branco',false)
	setScrollFactor('branco',0,0)
	scaleObject('branco',3,3)
	
	setPropertyFromGroup('unspawnNotes', i, 'rgbShader.enabled', false);

end

function onSpawnNote(i)
    setPropertyFromGroup('notes', i, 'shader', nil)
    setPropertyFromGroup('notes', i, 'noteSplashData.r', 0xff0000)
    setPropertyFromGroup('notes', i, 'noteSplashData.g', 0x00ff00)
    setPropertyFromGroup('notes', i, 'noteSplashData.b', 0x0000ff)
end
function onUpdatePost()
    if startedCountdown and not inGameOver then
        for i = 0, 7 do
            setPropertyFromGroup('strumLineNotes', i, 'shader', nil)
        end
    end
end