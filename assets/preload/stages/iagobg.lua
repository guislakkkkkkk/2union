function onCreate()
	makeLuaSprite('bg','iago/iagobackground',-1152,-273)
	makeAnimatedLuaSprite('backbop','iago/backbop',70,453)
	makeAnimatedLuaSprite('forebop','iago/forebop',-903,910)
	
	addLuaSprite('bg',false)
	addLuaSprite('backbop',false)
	addLuaSprite('forebop',true)
	
	setScrollFactor('backbop',0.9,1)
	setScrollFactor('forebop',1.2,1)
	
	scaleObject('forebop',1.3,1.3)
	
	addAnimationByPrefix('backbop','backbop','backbop',24,false)
	addAnimationByPrefix('forebop','forebop','forebop',24,false)
	
	triggerEvent('Set GF Speed',"2","")
end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('backbop','backbop',true)
		playAnim('forebop','forebop',true)
	
	end
end

function onStepHit()
	if curStep == 1418 then
		endSong()
	end
end