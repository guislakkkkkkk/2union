function onCreate()
	precacheImage('preto')

	setProperty('gfGroup.visible',false)

	makeLuaSprite('ceu','vitor/ceu',-450,-450)
	makeLuaSprite('arbustos 2','vitor/arbustos 2',10,100)
	makeLuaSprite('arbustos 1','vitor/arbustos 1',40,200)
	makeLuaSprite('background','vitor/background',0,0)
	makeAnimatedLuaSprite('jotan','vitor/jotan bg',1800,350)
	makeLuaSprite('preto','preto',0,0)

	addLuaSprite('ceu',false)
	addLuaSprite('arbustos 2',false)
	addLuaSprite('arbustos 1',false)
	addLuaSprite('background',false)
	addLuaSprite('jotan',false)
	
	addAnimationByPrefix('jotan','jotan','jotan bg',24,false)
	
	setScrollFactor('ceu',0,0)
	setScrollFactor('arbustos 2',0.5,0.5)
	setScrollFactor('arbustos 1',0.7,0.7)
	
	scaleObject('ceu',1.5,1.5)
	
	setObjectCamera('preto','camOther')
end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('jotan','jotan',true,false,0)
	end
end

function onStepHit()
	if curStep == 334 then
		addLuaSprite('preto',true)
	elseif curStep == 336 then
		removeLuaSprite('preto',false)
	end
end