local fragfly = false

function onCreate()
	followchars = false
	makeLuaSprite('preto','preto',-800,-400)
	scaleObject('preto',4,4)
	setScrollFactor('preto',0,0)
	addLuaSprite('preto',false)
	doTweenAlpha('lixoA','lixo',0,1,'linear')
	doTweenAlpha('overlayA','overlay',0,1,'linear')
	makeAnimatedLuaSprite('dance','grafitti/dance',240,-180)
	addLuaSprite('dance',true)
	setObjectCamera('dance','camOther')
	addAnimationByPrefix('dance','dance','dance',24,false)
	scaleObject('dance',0.5,0.5)
end

function onStepHit()
	if curStep == 32 then
		doTweenAlpha('pretoA','preto',0,1,'linear')
		doTweenAlpha('lixoA','lixo',100,2,'linear')
		doTweenAlpha('overlayA','overlay',100,2,'linear')
		cameraFlash('camGame','FFFFFF',2,true)
		doTweenY('danceY','dance',15,1,'cubeOut')
	elseif curStep == 64 then
		doTweenY('danceY','dance',-180,1,'cubeIn')
	elseif curStep == 960 then
		fragfly =  true
	end
end

function onBeatHit()
	playAnim('dance','dance',true,false,0)
end

function onUpdate(elapsed)
	if fragfly == true then
		if curStep >= 0 then
			songPos = getSongPosition()
			local currentBeat = (songPos/1000)*(bpm/80)
			doTweenY('dadTweenY', 'dad', 330-100*math.sin((currentBeat*0.25)*math.pi),0.001)
		end
	end
end