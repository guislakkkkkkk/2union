function onCreate()
	precacheImage('grafitti/fire/sky')
	precacheImage('grafitti/fire/predio3')
	precacheImage('grafitti/fire/predio2')
	precacheImage('grafitti/fire/predio1')
	precacheImage('grafitti/fire/wall')
	precacheImage('grafitti/fire/floor')
	precacheImage('grafitti/fire/ladder')
	precacheImage('grafitti/fire/bgbop')
	precacheImage('grafitti/fire/lixo')
	precacheImage('grafitti/fire/overlay')
	precacheImage('grafitti/fire/fundo legal')
	precacheImage('grafitti/fire/fogo')

	makeAnimatedLuaSprite('fundo legal','grafitti/fire/fundo legal',-650,-380)
	setScrollFactor('fundo legal',0,0)
	addAnimationByPrefix('fundo legal','fundo legal','fundo legal',24,true)
	scaleObject('fundo legal',1.6,1.6)
	makeAnimatedLuaSprite('geralmorrendo','grafitti/fire/bgbop',120,345)
	addAnimationByPrefix('geralmorrendo','geralmorrendo','alchemy',24,true)
	makeAnimatedLuaSprite('fogo','grafitti/fire/fogo',-600,0)
	addAnimationByPrefix('fogo','fogo','fogo',24,true)
	makeLuaSprite('preto','preto',0,0)
	setObjectCamera('preto','camOther')
	
end

function onStepHit()
	if curStep == 640 then
		setProperty('lixo.visible',false)
		setProperty('gfGroup.visible',false)
		
		loadGraphic('sky','grafitti/fire/sky')
		loadGraphic('predio3','grafitti/fire/predio3')
		loadGraphic('predio2','grafitti/fire/predio2')
		loadGraphic('predio1','grafitti/fire/predio1')
		loadGraphic('wall','grafitti/fire/wall')
		loadGraphic('floor','grafitti/fire/floor')
		loadGraphic('ladder','grafitti/fire/ladder')
		loadGraphic('lixo','grafitti/fire/lixo')
		
		addLuaSprite('fogo',false)
		playAnim('fogo','fogo',false,false,0)
		
		removeLuaSprite('bgbop',true)
		addLuaSprite('geralmorrendo',false)
		playAnim('geralmorrendo','geralmorrendo',false,false,0)

		addLuaSprite('fundo legal',false)
		playAnim('fundo legal','fundo legal',false,false,0)
		
	elseif curStep == 1152 then
		removeLuaSprite('fundo legal',false)
		setProperty('lixo.visible',true)
		setProperty('gfGroup.visible',true)
	
	elseif curStep == 1664 then
		setProperty('lixo.visible',false)
		setProperty('gfGroup.visible',false)

		addLuaSprite('fundo legal',false)
		playAnim('fundo legal','fundo legal',false,false,0)
		
	elseif curStep == 1920 then
		addLuaSprite('preto',true)
	end
end