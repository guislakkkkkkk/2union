function onCreate()
	setProperty('dadGroup.visible',false)
	makeLuaSprite('green hill','green hill',0,0)
	addLuaSprite('green hill',false)
	makeLuaSprite('faker','quiddy faker',700,960)
	addLuaSprite('faker',true)
	makeLuaSprite('meus labios','meus labios',0,0)
	setObjectCamera('meus labios','camOther')
	
end

function onBeatHit()
	if curBeat == 5 then
		addLuaSprite('meus labios',true)
	end
end