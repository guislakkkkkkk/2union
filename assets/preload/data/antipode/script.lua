local allowCountdown = false;

function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	precacheImage('start/cake vs ruiva')
	makeLuaSprite('preto','preto',0,0)
	addLuaSprite('preto',true)
	setObjectCamera('preto','camHUD')

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		playSound('vs',1)
		makeLuaSprite('vs','start/cake vs ruiva',0,0)
		setObjectCamera('vs','camHUD')
		
		runTimer('appear', 0.857, 1);
		runTimer('fadeout', 4, 1);
		
	elseif tag == 'appear' then
		removeLuaSprite('preto',true)
		addLuaSprite('vs',true)
		cameraFlash('camHUD','FFFFFF',0.5,true)
		cameraShake('camHUD',0.005,4)

	elseif tag == 'fadeout' then
		doTweenAlpha('va embora','vs',0,1,'cubeIn')
		
		allowCountdown = true;
		startCountdown();
	end
end

function onCountdownTick(counter)
	if counter == 4 then
		removeLuaSprite('vs',true)

	end
end