function onCreate()
	makeLuaSprite('dandobunda','dandobunda',0,0)
	setObjectCamera('dandobunda','camOther')
end

function onStepHit()
	if curStep == 272 then
		addLuaSprite('dandobunda',true)
		doTweenAlpha('dandobundatchau','dandobunda',0,1.5,'linear')
	end
end