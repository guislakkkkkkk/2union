function onCreate()
	setProperty('gfGroup.visible',false)
	
	makeLuaSprite('sky','caixo/sky',-430,-250)
	makeLuaSprite('sun','caixo/sun',400,300)
	makeLuaSprite('grass','caixo/grass',-1300,550)
	makeLuaSprite('overlay','caixo/overlay',0,0)
	
	addLuaSprite('sky',false)
	addLuaSprite('sun',false)
	addLuaSprite('grass',false)
	addLuaSprite('overlay',true)
	
	setScrollFactor('sky',0,0)
	setScrollFactor('sun',0.8,0.8)
	
	scaleObject('sky',2,1.8)
	
	setObjectCamera('overlay','camHud')
	
	setBlendMode('overlay','overlay')
end