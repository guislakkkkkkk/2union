local fragfly = false

function onCreate()
	followchars = false
	makeLuaSprite('preto','preto',-800,-400)
	scaleObject('preto',4,4)
	setScrollFactor('preto',0,0)
	addLuaSprite('preto',false)
	doTweenAlpha('lixoA','lixo',0,1,'linear')
	doTweenAlpha('overlayA','overlay',0,1,'linear')
end

function onStepHit()
	if curStep == 32 then
		doTweenAlpha('pretoA','preto',0,1,'linear')
		doTweenAlpha('lixoA','lixo',100,2,'linear')
		doTweenAlpha('overlayA','overlay',100,2,'linear')
		cameraFlash('camGame','FFFFFF',2,true)

	elseif curStep == 960 then
		fragfly =  true
	end
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