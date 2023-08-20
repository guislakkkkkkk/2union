local party = false

function onCreate()
	makeLuaSprite('red','vermelho',0,0)
	makeAnimatedLuaSprite('pinguim','grafitti/pinguim',750,-400)
	addAnimationByPrefix('pinguim','danceleft','danceleft',24,false)
	addAnimationByPrefix('pinguim','danceright','danceright',24,false)
	addLuaSprite('pinguim',false)
	addOffset('pinguim','danceleft',-10,0)
	setObjectCamera('red','camHud')
	
end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('pinguim','danceleft',true)
		doTweenColor('redcolor1','red','FF0000',0.3,'linear')
	else
		playAnim('pinguim','danceright',true)
		doTweenColor('redcolor1','red','0000FF',0.3,'linear')
	end
end

function onStepHit()
	if curStep == 748 then
		doTweenY('pinguimbounce','pinguim',720,2,'bounceOut')
	elseif curStep == 768 and flashingLights then
		addLuaSprite('red',true)
		setBlendMode('red','add');
	elseif curStep == 1024 and flashingLights then
		removeLuaSprite('red',true)
	end
end