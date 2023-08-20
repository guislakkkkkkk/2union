function onCreate()
	makeAnimatedLuaSprite('zuadas','grafitti/zuadas',-1000,407)
	addAnimationByPrefix('zuadas','zuadas','keny zuadas',24,true)
	scaleObject('zuadas',0.5,0.5)
end

function onStepHit()
	if curStep == 1658 then
		setProperty('boyfriend.skipDance', true)
		playAnim('bgbop','keny tacando',true,false,0)
		playSound('woop',1)
	elseif curStep == 1664 then
		if flashingLights then
			playAnim('zuadas','zuadas',true,false,0)
		end
		addLuaSprite('zuadas',true)
		setObjectCamera('zuadas','camOther')
		doTweenX('zuadasappear','zuadas',0,2,'cubeOut')
		runTimer('disappear',2,0)
		playSound('chaves',1)
		playSound('kenylaugh',1)
		playAnim('boyfriend','desmaiando',true,false,0)
		
	elseif curStep == 1672 then
		playSound('dbz slam',1)
	end
end

function onTimerCompleted(tag)
	if tag == 'disappear' then
		doTweenX('zuadasdisappear','zuadas',-1000,2,'cubeIn')
	end
end