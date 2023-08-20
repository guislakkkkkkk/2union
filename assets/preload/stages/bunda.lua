function onCreate()
	setProperty('gfGroup.visible',false)
	
	makeLuaSprite('bg','bunda bg',0,0)
	makeLuaSprite('gf bunda','bunda gf',350,400)
	addLuaSprite('bg',false)
	addLuaSprite('gf bunda',false)
	scaleObject('bg',1,1)
	scaleObject('gf bunda',0.7,0.7)
end

function onBeatHit()
	if curBeat % 2 == 0 then
	scaleObject('gf bunda',0.8,0.6)
	doTweenX('gfxsc', 'gf bunda.scale', 0.7, 0.4, 'cubeOut')
	doTweenY('gfysc', 'gf bunda.scale', 0.7, 0.4, 'cubeOut')
end
end