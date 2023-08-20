local allowCountdown = false;
local cor = 'oi'

function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	precacheImage('start/flow')
	precacheImage('start/flechinhas')
	precacheImage('start/flecha grande')
	precacheImage('start/barra preta')
	precacheImage('start/barra preta baixo')
	precacheMusic('introduction')
end

function getIconColor(chr)
    return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
end

function rgbToHex(array)
    return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		cor = getIconColor('dad');
		makeAnimatedLuaSprite('flow','start/flow',0,0)
		makeLuaSprite('flechinhas','start/flechinhas',-1218,121)
		makeLuaSprite('flecha grande','start/flecha grande',-932,157)
		makeLuaSprite('barra preta cima','start/barra preta cima',0,-158)
		makeLuaSprite('barra preta baixo','start/barra preta baixo',0,878)
		makeLuaSprite('pessoa','start/pessoas/' .. dadName .. ' 2union',-1280,0)
		
		makeLuaText('nome',songName,0,-1000,575)
		setTextAlignment('nome','left')
		setTextBorder('nome',10,'000000')
		setTextSize('nome',150)
		setTextFont('nome','Round Regular.ttf')
		
		addLuaSprite('flow',true)
		addLuaSprite('flechinhas',true)
		addLuaSprite('flecha grande',true)
		addLuaSprite('barra preta cima',true)
		addLuaSprite('barra preta baixo',true)
		addLuaSprite('pessoa',true)
		addLuaText('nome')
		
		setProperty('flechinhas.color',cor)
		setProperty('flecha grande.color',cor)
		
		setObjectCamera('flow','camHUD')
		setObjectCamera('flechinhas','camHUD')
		setObjectCamera('flecha grande','camHUD')
		setObjectCamera('barra preta cima','camHUD')
		setObjectCamera('barra preta baixo','camHUD')
		setObjectCamera('pessoa','camHUD')
		setObjectCamera('nome','camHUD')
		
		addAnimationByPrefix('flow','flow','Símbolo',24,true)
		setProperty('flow.alpha',0)
		
		runTimer('appear', 0.6, 1);
		runTimer('fadeout', 3, 1);
		runTimer('flash',2.3,1);
		
	elseif tag == 'appear' then
		playMusic('introduction',1,false)
		playAnim('flow','flow',true,false,0)
		doTweenAlpha('flowappear','flow',100,1,'linear')
		doTweenX('flechinhasappear','flechinhas',0,1.5,'cubeOut')
		doTweenX('flechaappear','flecha grande',0,1,'cubeOut')
		doTweenY('barracimaappear','barra preta cima',0,0.5,'cubeOut')
		doTweenY('barrabaixoappear','barra preta baixo',562,0.5,'cubeOut')
		doTweenX('pessoaappear','pessoa',0,1,'cubeOut')
		doTweenX('textappear','nome',50,1,'cubeOut')
		
	elseif tag == 'fadeout' then
		doTweenAlpha('flowsumir','flow',0,1,'linear')
		doTweenX('flechinhassumir','flechinhas',-1218,1.5,'cubeIn')
		doTweenX('flechasumir','flecha grande',-932,1,'cubeIn')
		doTweenY('barracimasumir','barra preta cima',-158,0.5,'cubeOut')
		doTweenY('barrabaixosumir','barra preta baixo',878,0.5,'cubeOut')
		doTweenX('pessoasumir','pessoa',-1280,1,'cubeIn')
		doTweenX('textsumir','nome',-1000,1,'cubeOut')
		
		allowCountdown = true;
		startCountdown();
	elseif tag == 'flash' then
		cameraFlash('camHUD','FFFFFF',0.5,true)
		cameraFlash('camGame','bfc4d6',2,true)
	end
end

function onCountdownTick(counter)
	if counter == 4 then
		removeLuaSprite('flow',true)
		removeLuaSprite('flechinhas',true)
		removeLuaSprite('flecha grande',true)
		removeLuaSprite('barra preta cima',true)
		removeLuaSprite('barra preta baixo',true)
		removeLuaSprite('pessoa',true)
		removeLuaText('nome',true)

	end
end