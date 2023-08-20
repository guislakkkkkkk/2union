
function onCreatePost()

		setProperty('scoreTxt.visible', false)
		setProperty('timeBarBG.visible', false)
		setProperty('timeBar.visible', false)
		setProperty('timeTxt.visible', false)
	
		setPropertyFromClass('lime.app.Application', 'current.window.title', "Friday Night Funkin'")

		setHealthBarColors('ff0000', '5DED2A') 

		makeLuaText('vanillascore','Score: 0',0,0,0)
		setTextSize('vanillascore', 16.5)
		setProperty('vanillascore.y',getProperty('scoreTxt.y'))
		setProperty('vanillascore.x',getProperty('scoreTxt.x')+750)
		setTextBorder('vanillascore', 1.5, '000000')
		addLuaText('vanillascore')
end

function onRecalculateRating()

	setTextString('vanillascore','Score: '..score)
end

function onUpdatePost(elapsed)
	for i = 0, getProperty('grpNoteSplashes.length')-1 do
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -30)
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -30)
		setPropertyFromGroup('grpNoteSplashes', i, 'alpha', 0)
	end
end

--icons

function onBeatHit()
	scaleObject('iconP1', 1.3, 1.3)
	doTweenX('iconP1', 'iconP1.scale', 1, crochet/1000, 'circOut')
	doTweenY('iconP1-2', 'iconP1.scale', 1, crochet/1000, 'circOut')
	
	scaleObject('iconP2', 1.3, 1.3)
	doTweenX('iconP2', 'iconP2.scale', 1, crochet/1000, 'circOut')
	doTweenY('iconP2-2', 'iconP2.scale', 1, crochet/1000, 'circOut')
end

function onUpdate(elasped)

iconOffset = 26
healthBarX = getProperty('healthBar.x')
healthBarW = getProperty('healthBar.width')
healthBarP = getProperty('healthBar.percent')

setGraphicSize('iconP1',math.lerp(150,getProperty('iconP1.width'), 0.50))
setProperty('iconP1.x', healthBarX + (healthBarW * (math.remapToRange(healthBarP, 0, 100, 100, 0) * 0.01) - iconOffset));

setGraphicSize('iconP2',math.lerp(150,getProperty('iconP1.width'), 0.50))
setProperty('iconP2.x', healthBarX + (healthBarW * (math.remapToRange(healthBarP, 0, 100, 100, 0) * 0.01) - iconOffset));

updateHitbox('iconP1')
updateHitbox('iconP2')
end

function noteMiss()
	playSound('missnote' .. tostring(getRandomInt(1,3)),1)
end

--original game: https://ninja-muffin24.itch.io/funkin - https://www.newgrounds.com/portal/view/770371

--based on this script: https://gamebanana.com/mods/385666