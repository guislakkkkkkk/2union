local bfCrazy = false

function onCreate()
	makeAnimatedLuaSprite('bfdead','bf desmaiado',753,220)
	addAnimationByPrefix('bfdead','desmaio','Símbolo 28',24,true)
	addOffset('bfdead','desmaio',-750,-600)
	addLuaSprite('bfdead','false')
	playAnim('bfdead','desmaio',true)
	addCharacterToList('bf','gf')
	makeLuaSprite('jornal','grafitti/jornal',-1400,400)
	addLuaSprite('jornal',true)
	setScrollFactor('jornal',1.3,1.3)
	scaleObject('jornal',1.5,1.5)

end

function onStepHit()
	if curStep == 688 then
		playSound('jornal',2)
		doTweenX('jornalvoar','jornal',4000,3,'linear')
		doTweenAngle('jornalgirar','jornal',359,3,'linear')
	elseif curStep == 1139 then
		bfCrazy = true
		triggerEvent('Change Character','GF','bf')
		doTweenY('bfgodown','bfdead',700,0.4,'linear')
		setProperty('gfGroup.y',720)
		setProperty('gfGroup.x',1100)
		doTweenY('bfgoup','gf',590,2,'cubeOut')
		doTweenY('gfbounce','boyfriend',780,2,'bounceOut')
		doTweenAngle('gfcaindo','boyfriend',90,1.5,'cubeOut')
	end
end

function onBeatHit()
	if bfCrazy then
	if mustHitSection then
		setProperty('gfGroup.flipX',true)
		doTweenX('bfwalk','gf',1100,1,'cubeOut')
	else
		setProperty('gfGroup.flipX',false)
		doTweenX('bfwalk','gf',850,1,'cubeOut')
	end
end
end