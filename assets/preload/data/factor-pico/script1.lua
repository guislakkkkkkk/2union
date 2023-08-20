function onCreate()
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
	end
end