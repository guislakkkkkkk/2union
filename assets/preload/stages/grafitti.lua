
function onCreate()
	makeLuaSprite('sky','grafitti/sky',-977,-661)
	makeLuaSprite('predio3','grafitti/predio3',-337,-385)
	makeLuaSprite('predio2','grafitti/predio2',1437,-610)
	makeLuaSprite('predio1','grafitti/predio1',-882,-728)
	makeLuaSprite('predio1','grafitti/predio1',-882,-728)
	makeLuaSprite('wall','grafitti/wall',-1404,0)
	makeLuaSprite('floor','grafitti/floor',-1672,742)
	makeLuaSprite('ladder','grafitti/ladder',1298,59)
	makeAnimatedLuaSprite('bgbop','grafitti/bgbop',218,345)
	makeLuaSprite('lixo','grafitti/lixo',-2040,1235)
	makeLuaSprite('overlay','grafitti/overlay',0,0)
	
	addLuaSprite('sky',false)
	addLuaSprite('predio3',false)
	addLuaSprite('predio2',false)
	addLuaSprite('predio1',false)
	addLuaSprite('wall',false)
	addLuaSprite('floor',false)
	addLuaSprite('ladder',false)
	addLuaSprite('bgbop',false)
	addLuaSprite('lixo',true)
	addLuaSprite('overlay',true)
	
	setObjectCamera('overlay','hud')
	setScrollFactor('caixo',1.2,1.2)
	setScrollFactor('nekorno',1.2,1.2)
	setScrollFactor('lixo',1.5,1.5)
	setScrollFactor('predio1',0.6,0.6)
	setScrollFactor('predio2',0.4,0.4)
	setScrollFactor('predio3',0.2,0.2)
	setScrollFactor('sky',0,0)
	scaleObject('caixo',1.3,1.3)
	scaleObject('nekorno',1.3,1.3)
	scaleObject('lixo',1.5,1.5)
	
	addAnimationByPrefix('bgbop',dadName,dadName,24,false)
	addAnimationByPrefix('bgbop','keny tacando','keny tacando',24,false)
	playAnim('bgbop',dadName,true,false,0)

	setBlendMode('overlay','overlay')
	
end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('bgbop',dadName,true,false,0)
	end
end