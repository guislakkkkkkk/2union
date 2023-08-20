local fundox1 = -400
local fundox2 = -300

function onCreate()
	setProperty('gfGroup.visible',false)

	makeLuaSprite('sol','vitor/erect/BACKGROUND_LAYER01',-630,-410)
	makeLuaSprite('fundo','vitor/erect/BACKGROUND_LAYER02',-300,fundox1)
	makeLuaSprite('solo','vitor/erect/BACKGROUND_LAYER03',-500,-400)
	
	addLuaSprite('sol',false)
	addLuaSprite('fundo',false)
	addLuaSprite('solo',false)
	
	scaleObject('solo',2,2)
	scaleObject('fundo',1.5,1.5)
	
	doTweenY('fundo1', 'fundo', fundox2, 1.5, 'cubeInOut')
	doTweenAngle('fundoA2', 'fundo', getRandomInt(-10,-40), 0.2, 'cubeInOut')
	
	setScrollFactor('fundo',0.5,0.5)
	setScrollFactor('sol',0,0)
	
	makeLuaSprite('mediaoffline','vitor/erect/media offline',0,0)
	
	setObjectCamera('mediaoffline','other')

end

function onTweenCompleted(tag)
	if tag == 'fundo1' then
		doTweenY('fundo2', 'fundo', fundox1, getRandomInt(0.2,2), 'cubeInOut')
	
	elseif tag == 'fundo2' then
		doTweenY('fundo1', 'fundo', fundox2, getRandomInt(0.2,2), 'cubeInOut')
	end
	if tag == 'fundoA1' then
		doTweenAngle('fundoA2', 'fundo', getRandomInt(-10,-40), getRandomInt(0.2,2), 'cubeInOut')
	
	elseif tag == 'fundoA2' then
		doTweenAngle('fundoA1', 'fundo', getRandomInt(10,40), getRandomInt(0.2,2), 'cubeInOut')
	end
end

function onStepHit()
	if curStep == 80 then
		addLuaSprite('mediaoffline',true)
		
	elseif curStep == 108 then
		loadGraphic('mediaoffline','vitor/erect/bsod')
		
	elseif curStep == 128 then
		loadGraphic('mediaoffline','preto')

	elseif curStep == 143 then
		removeLuaSprite('mediaoffline',false)
		
	elseif curStep == 879 then
		addLuaSprite('mediaoffline',true)
		
	elseif curStep == 912 then
		removeLuaSprite('mediaoffline',false)
		
	--elseif curStep == 1200 then
		--callScript('data/esquece-estilo-erect/VideoSpriteHandler', 'makeVideoSprite',{'erectmedo', 'esquece', 0, 0, 'camOther', true})
		
	elseif curStep == 2032 then
		doTweenX('solx', 'sol', 700, 14, 'cubeOut')
		doTweenY('soly', 'sol', 400, 14, 'linear')
		doTweenX('solxsc', 'sol.scale', 10, 14, 'linear')
		doTweenY('solysc', 'sol.scale', 10, 14, 'linear')
	
	end
end

function onEvent(name)
	if name == 'Add Camera Zoom' then
		scaleObject('fundo',1.4,1.4)
		doTweenX('fundoxsc', 'fundo.scale', 1.5, 0.4, 'cubeOut')
		doTweenY('fundoysc', 'fundo.scale', 1.5, 0.4, 'cubeOut')
	end
end