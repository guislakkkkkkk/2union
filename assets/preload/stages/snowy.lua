function onCreate()
	makeLuaSprite('ceu','yubo/céu',-650,-500)
	setScrollFactor('ceu',0,0)
	scaleObject('ceu',2.1,2.1)
	makeLuaSprite('arvores','yubo/árvores',-600,-240)
	setScrollFactor('arvores',0.7,0.8)
	makeLuaSprite('neve fundo','yubo/neve fundo',-900,500)
	setScrollFactor('neve fundo',0.9,1)
	makeLuaSprite('neve','yubo/neve',-1700,0)
	
	addLuaSprite('ceu',false)
	addLuaSprite('arvores',false)
	addLuaSprite('neve fundo',false)
	addLuaSprite('neve',false)
	
	setProperty('gfGroup.visible',false)
end