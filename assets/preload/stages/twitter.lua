function onCreate()
	makeLuaSprite('céu','twitter/céu',-430,-250)
	makeLuaSprite('predios','twitter/predios',-200,165)
	makeLuaSprite('predios 2','twitter/predios 2',-100,394)
	makeLuaSprite('predios 3','twitter/predios 3',250,446)
	makeLuaSprite('predio','twitter/prédio',671,200)
	makeLuaSprite('chão','twitter/chão',-903,802)
	makeAnimatedLuaSprite('moots','twitter/moots',-700,105) --i don't even know half of them lmao
	makeLuaSprite('overlay','twitter/overlay',0,0)
	
	addLuaSprite('céu',false)
	addLuaSprite('predios',false)
	addLuaSprite('predios 2',false)
	addLuaSprite('predios 3',false)
	addLuaSprite('predio',false)
	addLuaSprite('chão',false)
	addLuaSprite('moots',false)
	addLuaSprite('overlay',true)
	
	setScrollFactor('céu',0,0)
	setScrollFactor('predios',0.3,0.9)
	setScrollFactor('predios 2',0.5,0.9)
	setScrollFactor('predios 3',0.7,0.9)
	setScrollFactor('predio',0.7,0.9)
	setScrollFactor('gfGroup',0.7,0.9)
	
	scaleObject('céu',1.7,1.7)
	
	addAnimationByPrefix('moots','bg chars','bg chars',24,false)
	addAnimationByPrefix('moots','keny tacando','keny tacando',24,false)
	playAnim('moots','bg chars',true,false,0)
	
	setObjectCamera('overlay','camOther')
	setBlendMode('overlay','overlay')

end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('moots','bg chars',true,false,0)
	end
end