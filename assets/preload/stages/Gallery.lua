--By UpDown LeftRight

--Remaster by Kriptel Pro

--												<-- UPDATE 1 -->
--Additions:
--	Added photo mode
--	Added smooth appearance of the interface
--	Added more settings in Lua
--Bugfix:
--	Fixed the text when entering the gallery

--												<-- UPDATE 2 -->
--Additions:
--	added 'bgVolume' option
--	added 'Font' option, so you can easy change it
--Improvement:
--	sprite now not store like getRandomInt(0, 99999)
--Bugfix:
--	Music now playing on repeat

-- art shit
length = 0;
images = {
	-- do not touch this
}
local id = 0





-- 									<-- SETTINGS, CHANGE SOME OF THE THINGS HERE-->

local bgSettings = {
	['bgSong'] = "gallery", -- Bg Music
	['bgVolume'] = 1, -- Bg Music Volume
	['Scroll Value'] = 0.25, -- Background scroll speed
	['Bg Alpha Value'] = 0.75, -- Background alpha value (From 1 to 0)
}
local gallerySettings = {
	['EnablePhotoMode'] = true, -- Will enable Photo Mode to inspect images
	['Shift View Speed'] = 2, -- Default image moving speed while in Photo Mode
	['Font'] = 'fnf.ttf', -- Description Font
}
local inputs = { -- 			<< CHANGE PHOTO MODE INPUTS HERE >>
	['ZoomOutKey'] = "Z",
	['ZoomInKey'] = "X",
	['PhotoModeKey'] = "C", -- Default Photo Mode Keybinding
}






-- 						<-- OTHER THINGS, SO DON'T TOUCH THIS -->

local inPhoto = false -- Don't change it to true, i warning you
local scrollSpeed = gallerySettings['Shift View Speed']

function onCreate()
	--<		  Add art functions       >--
	--tutorial:
	-- addArt('name','description','color(HEX)','sizeSelected','sizeNotSelected')
	-- example:	addArt('pizdec','vanya','FFA500',5,3)
	
	addArt('john vic 2','Fanart do Johnatan por Vic','00FFBB',5,3)
	addArt('mia john e jotan idiot','Fanart de Mia, Johnatan e Jotan por Idiot Anima','00FFBB',5,3)
	addArt('mia e john idiot','Fanart de Mia e Johnatan por Idiot Anima','00FFBB',5,3)
	addArt('jotan jhony','Fanart do Jotan por JhonyAnims','00FFBB',5,3)
	addArt('mia vic 2','Fanart da Mia por Vic','00FFBB',5,3)
	addArt('mia nonimo','Fanart da Mia por Nônimo','00FFBB',5,3)
	addArt('mia_japonesloco','Fanart da Mia por Crispy','00FFBB',5,3)
	addArt('mia-tekaruki','Fanart da Mia por Tekaruki','00FFBB',5,3)
	addArt('mia aly ant0','Fanart da Mia por Aly-Ant0','00FFBB',5,3)
	addArt('john yubo','Fanart do John por Yubo, só que bom','00FFBB',5,3)
	addArt('john south park','Fanart do Johnatan por Viie','00FFBB',5,3)
	addArt('jotan south park','Fanart do Jotan por Viie','00FFBB',5,3)
	addArt('mia south park','Fanart da Mia por Viie','00FFBB',5,3)
	addArt('venesio papercraft','Papercraft do Venesio (nao sou eu mais ok ok) por TMzito','00FFBB',5,3)
	addArt('mia papercraft','Papercraft da Mia por TMzito','00FFBB',5,3)
	addArt('mia yubo 2','Fanart da Mia por Yubo','00FFBB',5,3)
	addArt('mia yubo 3','Fanart da Mia por Yubo, só que bom','00FFBB',5,3)
	addArt('lick sunno','Fanart do Lick por Sunno!','00FFBB',5,3)
	addArt('john-e-jotan-vic','Fanart do Jotan e Johnatan por Vic!','00FFBB',5,3)
	addArt('jotan-viie','Fanart do Jotan por Viie!','00FFBB',5,3)
	addArt('mia-vic','Fanart da Mia por Vic!','00FFBB',5,3)
	addArt('mia yusaio','Fanart da Mia por Yusaio!','00FFBB',5,3)
	addArt('mia yubo','Fanart dOI HUBOOO OI JUBO','00FFBB',5,3)
	
	addArt('beastie','Capa da Beastie','A34DFF',5,3)
	addArt('factor','Capa da Factor','A34DFF',5,3)
	addArt('butfunk','Capa da Butfunk','A34DFF',5,3)
	addArt('egelelazer','Capa da Egelelazer','A34DFF',5,3)
	addArt('panetune','Capa da Panetune','A34DFF',5,3)
	addArt('keep me calm','Capa da Keep me Calm','A34DFF',5,3)
	addArt('shoegases','Capa da Shoegases','A34DFF',5,3)
	addArt('ESQUECE','Capa da Esquece Estilo','A34DFF',5,3)
	addArt('lynxie','Capa da Lynxie','A34DFF',5,3)
	addArt('piss','Capa da Piss','A34DFF',5,3)
	addArt('ESQUECE_1','Capa da Esquece Estilo ERECT REMIX','A34DFF',5,3)
	addArt('alegao','Capa da A Legao','A34DFF',5,3)
	addArt('ei vc beep','Capa da Ei vc Beep','A34DFF',5,3)
	addArt('givin ass','Capa da Givin\' Ass','A34DFF',5,3)
	
	addArt('primo exe','primo exe do nekoro','A9A9A9',5,3)
	addArt('coso','cosos','A9A9A9',5,3)
	addArt('jotan_adventure','Jotan Adventure','A9A9A9',5,3)
	addArt('egelelazer old','Capa antiga da Egelelazer','A9A9A9',5,3)
	addArt('john catboy','john catboy','A9A9A9',5,3)
	addArt('cosinho','cosinho','A9A9A9',5,3)
	addArt('image-15','caixo pt','A9A9A9',5,3)
	addArt('frame_1675969606135','2union park','A9A9A9',5,3)
	addArt('image-5','jotan bejo','A9A9A9',5,3)
	addArt('1559005322288','caixo sideview','A9A9A9',5,3)
	addArt('g4bo_novetus','gabo novetus','A9A9A9',5,3)
	addArt('image','narinas','A9A9A9',5,3)
	addArt('dandobunda','ele ta dando bunda','A9A9A9',5,3)
	addArt('get_hangouts_attachment_url','EXCLUI ESSE COMMENT','A9A9A9',5,3)
	addArt('anxele','ninguém sabe quem caralhos são esses bixos','A9A9A9',5,3)
	addArt('carinhas_e_carlos','????','A9A9A9',5,3)
	addArt('vomito_arco_iris','TROL','A9A9A9',5,3)
	addArt('english','((:B','A9A9A9',5,3)
	addArt('some_mf_snorting_redstone','viniccius13','A9A9A9',5,3)
	addArt('jk','top 10 renders','A9A9A9',5,3)
	addArt('incrivell','segundo o jotan isso é importante pro server eu acho??','A9A9A9',5,3)
	addArt('2017-08-12','yaixa love','A9A9A9',5,3)
	addArt('gelado','gelado, desenho que foi parar no bg','A9A9A9',5,3)
	addArt('cliatula de piloca','cliatula de piloca, desenho que foi parar no bg','A9A9A9',5,3)
	addArt('angellidick','zé palito grafitando pinto, desenho que (quase) foi parar no bg','A9A9A9',5,3)
	addArt('cools','cool s, desenho que foi parar no bg','A9A9A9',5,3)
	addArt('sans','John ATAH','A9A9A9',5,3)
	addArt('spoonfull','apenas uma colherada!','A9A9A9',5,3)
	addArt('garfo','cake fala Deus com d minusculo e vira garfo','A9A9A9',5,3)
	addArt('qq e isso','qq e isso','A9A9A9',5,3)
	addArt('arsonist_vagando_vs_brute_twerk_mod','melhor mod','A9A9A9',5,3)
	addArt('ARSENAL_E_CRISTAO','arsenal e cristão','A9A9A9',5,3)
	addArt('kaio','Ok, Kaio.','A9A9A9',5,3)
	addArt('baloony','balloonnyy','A9A9A9',5,3)
	addArt('fnfero','BURRO DO CARALHO','A9A9A9',5,3)
	addArt('smoke_acrobacity','ele foi pro acrobacity...','A9A9A9',5,3)
	--addArt('coming straight for ya','coming straight for ya!','A9A9A9',5,3)
	addArt('boneco_jotan_3_4_mini','BONECO JOTAAAN!','A9A9A9',5,3)
	addArt('john bugado','KKKKKKKKKKK O JOHN TA BUGADO','A9A9A9',5,3)
	addArt('a_morte_de_acro','a morte de acro','A9A9A9',5,3)
	addArt('augusto','augusto remake!','A9A9A9',5,3)
	addArt('facejotan','face','A9A9A9',5,3)
	addArt('jotan ogilive','jotan redesign','A9A9A9',5,3)
	addArt('the_thalasin_faces_collab','eu','A9A9A9',5,3)
	addArt('perna cabeluda','não entendi oq tá escrito','A9A9A9',5,3)
	addArt('jona caderno','hey joninho','A9A9A9',5,3)
	addArt('eu te odeio','sussus moogus','A9A9A9',5,3)
	addArt('poste','poste','A9A9A9',5,3)
	addArt('SHAPNER','SHAPNER','A9A9A9',5,3)
	addArt('e morreu','e morreu','A9A9A9',5,3)
	--addArt('shittingtoothpaste','pasta de dente vaga','A9A9A9',5,3)
	--addArt('bf_baby','boyfriend bebe','A9A9A9',5,3)
	--addArt('criativinicius','pra começar com chave de cu','A9A9A9',5,3)
	addArt('kys','kys','A9A9A9',5,3)
	addArt('eu_fiz_o_cebolinha','eu que fiz','A9A9A9',5,3)
	addArt('gema biquini','a historia por tras disso é muito boa','A9A9A9',5,3)
	addArt('BANNER','BANNER','A9A9A9',5,3)
	addArt('keny_hihihi','e o kényson','A9A9A9',5,3)
	addArt('para de manda hentai','para di manda hentai vei','A9A9A9',5,3)
	addArt('wtfbf','wtf bf','A9A9A9',5,3)
	addArt('rap dating night','creditos do jogo que eu e o john tava fazendo parodiando FNF','A9A9A9',5,3)
	addArt('rap dating night menu','menu da mesma parodia de FNF','A9A9A9',5,3)
	addArt('jona preto e branco','jona hiperrealista','A9A9A9',5,3)
	addArt('jotan hiperrealista','jotan hiperrealista','A9A9A9',5,3)
	addArt('jonao hiperrealista','ocarina hiperrealista','A9A9A9',5,3)
	addArt('lick maluco','lick hiperrealista','A9A9A9',5,3)
	addArt('keny peludo','keny hiperrealista','A9A9A9',5,3)
	addArt('matheus','matheus hiperrealista','A9A9A9',5,3)
	addArt('vcs ja tao bebendo','vcs ja tao bebendo','A9A9A9',5,3)
	
	length = length - 1;

	-- preload stuff
	makeLuaSprite('fon', 'galLery/onCreate/fundo galeria', 0, 0)
	makeLuaSprite('fon2', 'galLery/onCreate/fundo galeria', 1286, 0)
	makeLuaSprite('bglogo', 'gallery/onCreate/downPart', 0, 500)
	makeLuaSprite('bglogo2', 'gallery/onCreate/upPart', 0, -500)
	makeLuaSprite('bglogo3', 'gallery/onCreate/upPart', 1280, -500)
	makeLuaSprite('logo', 'gallery/onCreate/logo', 0, 500)
	makeAnimatedLuaSprite('RightArrow', 'setinha', 1100, 1200)
	makeAnimatedLuaSprite('LeftArrow', 'setinha', 1000, 1200)
	makeAnimatedLuaSprite('inphud', 'gallery/onCreate/inputs',12,73)
	addAnimationByPrefix('inphud','C','C',24,true)
	addAnimationByPrefix('inphud','Z X','Z X',24,true)

	precacheSound('scrollMenu')
	precacheSound('cancelMenu')

	removeLuaScript('scripts/introduction.lua')

	for i = 0,length do
		precacheImage('gallery/'..images[i].name) 
		--debugPrint('New path preloaded: gallery/'..images[i].name)
	end
end

function addArt(name,description,color,sizeSelected,sizeNotSelected)
	images[length] = {
		name = name,
		description = description,
		color = color,
		sizeSelected = sizeSelected,
		sizeNotSelected = sizeNotSelected
	}
	length = length + 1;
end
function onStartCountdown()

	--for _ in pairs(images) do length = length + 1 end  --Get length of Images
	
	fuckHud()
	setProperty('dad.visible', false)


	addLuaSprite('fon')
	addLuaSprite('fon2')

	setObjectCamera('fon', 'other')
	setObjectCamera('fon2', 'other')

	setObjectCamera('bglogo', 'other')
	setObjectCamera('bglogo2', 'other')
	setObjectCamera('bglogo3', 'other')

	setObjectCamera('logo', 'other')
	setObjectCamera('RightArrow', 'other')
	setObjectCamera('LeftArrow', 'other')

	addLuaSprite('bglogo')
	addLuaSprite('bglogo2')
	addLuaSprite('bglogo3')
	addLuaSprite('logo')

	addLuaSprite('RightArrow')
	addLuaSprite('LeftArrow')
	
	addLuaSprite('inphud')
	setObjectCamera('inphud', 'other')

	--scaleObject('RightArrow', 0.7, 0.7)
	--scaleObject('LeftArrow', 0.7, 0.7)
	
	setProperty('RightArrow.flipX', true)
	

	--	START TWEENS

	doTweenY('logo1', 'bglogo', 0, 1, 'sineOut')
	doTweenY('logo2', 'bglogo2', -50, 1.2, 'sineOut')
	doTweenY('logo3', 'bglogo3', -50, 1.2, 'sineOut')
	doTweenY('logo4', 'logo', 0, 2, 'sineOut')

	doTweenY('b1', 'LeftArrow', 600, 1.6, 'backOut')
	doTweenY('b2', 'RightArrow', 600, 2, 'backOut')

	--	TWEENS END

	onChange(0)

	makeLuaText('descriptionText', images[id].description, 640, 320, 0)
	setTextSize('descriptionText', 50)
	addLuaText('descriptionText')

	setTextFont('descriptionText', gallerySettings['Font'])

	setObjectCamera('descriptionText', 'other')
	runTimer('musica', 0.1)

	return Function_Stop;
end

function onUpdate(elapsed)
	--debugPrint(getProperty('RightArrow.scale.x'))
	doTweenColor('fonColor', 'fon', images[id].color, 0.25, 'sineOut')
	doTweenColor('fonColor2', 'fon2', images[id].color, 0.25, 'sineOut')

	--FON START
	setProperty('fon.x', getProperty('fon.x') - bgSettings['Scroll Value'])
	setProperty('fon2.x', getProperty('fon2.x') - bgSettings['Scroll Value'])
	if getProperty('fon.x') <= -1286 then
		setProperty('fon.x', 0)
		setProperty('fon2.x', 1286)
	end

	setProperty('fon.alpha', bgSettings['Bg Alpha Value'])
	setProperty('fon2.alpha', bgSettings['Bg Alpha Value'])
	--FON END

	--scroll2 start

	setProperty('bglogo2.x', getProperty('bglogo2.x')-elapsed*100)
	setProperty('bglogo3.x', getProperty('bglogo3.x')-elapsed*100)
	if getProperty('bglogo2.x') <= -1280 then
		setProperty('bglogo2.x', 0)
		setProperty('bglogo3.x', 1280)
	end

	--scroll2 end


if not inPhoto and gallerySettings['EnablePhotoMode'] then
	if keyJustPressed('right') then
	
		playSound('scrollMenu')
		--id = id + 1
		onChange(1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorRight', 'RightArrow', '808080', -1)
		runTimer('right', 0.1)
	end
	if keyJustPressed('left') then
		playSound('scrollMenu')
		--id = id - 1
		onChange(-1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorLeft', 'LeftArrow', '808080', -1)
		runTimer('left', 0.1)
	end
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..inputs['PhotoModeKey']) then
		inPhoto = true
	end
elseif inPhoto and gallerySettings['EnablePhotoMode'] then
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..inputs['PhotoModeKey']) then
		inPhoto = false
	end
elseif not gallerySettings['EnablePhotoMode'] then
	if keyJustPressed('right') then
		playSound('scrollMenu')
		--id = id + 1
		onChange(1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorRight', 'RightArrow', '808080', -1)
		runTimer('right', 0.1)
	end
	if keyJustPressed('left') then
		playSound('scrollMenu')
		--id = id - 1
		onChange(-1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorLeft', 'LeftArrow', '808080', -1)
		runTimer('left', 0.1)
	end
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..inputs['PhotoModeKey']) then
		inPhoto = false
	end
end

	if keyJustPressed('back') then
		playSound('cancelMenu')
		endSong()
		return Function_Continue;
	end
	-- 									<-- Photo Mode ;-; -->
	if inPhoto then
		playAnim('inphud','Z X',true,false,0)
		doTweenAlpha('leftImageBrr', 'left2', 0, 0.1, 'sineOut')
		doTweenAlpha('RightImageBrr', 'Right2', 0, 0.1, 'sineOut')

		doTweenAlpha('descriptionTextAlpha', 'descriptionText', 0, 0.1, 'sineOut')

		doTweenAlpha('LogoImageBrr', 'logo', 0, 0.1, 'sineOut')
		doTweenAlpha('BgLogoBrr', 'bglogo', 0, 0.1, 'sineOut')
		doTweenAlpha('BgLogo2Brr', 'bglogo2', 0, 0.1, 'sineOut')
		doTweenAlpha('BgLogo3Brr', 'bglogo3', 0, 0.1, 'sineOut')

		doTweenAlpha('rightButton', 'RightArrow', 0, 0.1, 'sineOut')
		doTweenAlpha('leftButton', 'LeftArrow', 0, 0.1, 'sineOut')
		--							--> CONTROLS OR SMTH <--

		if keyPressed('left') then
			setProperty('Middle2.x', getProperty('Middle2.x') - scrollSpeed)
		end
			if keyPressed('right') then
			setProperty('Middle2.x', getProperty('Middle2.x')+ scrollSpeed)
			end
				if keyPressed('down') then
				setProperty('Middle2.y', getProperty('Middle2.y')+ scrollSpeed)
				end
					if keyPressed('up') then
					setProperty('Middle2.y', getProperty('Middle2.y')- scrollSpeed)
					end

		if keyPressed('space') then
			scrollSpeed = gallerySettings['Shift View Speed'] + 2
		else
			scrollSpeed = gallerySettings['Shift View Speed']
		end

		if getPropertyFromClass('flixel.FlxG', 'keys.pressed.'..inputs['ZoomInKey']) then
		setProperty('Middle2.scale.x', getProperty('Middle2.scale.x')+0.01)
		setProperty('Middle2.scale.y', getProperty('Middle2.scale.y')+0.01)
		elseif getPropertyFromClass('flixel.FlxG', 'keys.pressed.'..inputs['ZoomOutKey']) and getProperty('Middle2.scale.x') >= 0.1 then
		setProperty('Middle2.scale.x', getProperty('Middle2.scale.x')-0.01)
		setProperty('Middle2.scale.y', getProperty('Middle2.scale.y')-0.01)
		end

	else
		playAnim('inphud','C',true,false,0)
		doTweenAlpha('leftImageBrr', 'left2', 0.5, 0.25, 'sineOut')
		doTweenAlpha('RightImageBrr', 'Right2', 0.5, 0.25, 'sineOut')

		doTweenAlpha('descriptionTextAlpha', 'descriptionText', 1, 0.25, 'sineOut')

		doTweenAlpha('LogoImageBrr', 'logo', 1, 0.25, 'sineOut')
		doTweenAlpha('BgLogoBrr', 'bglogo', 1, 0.25, 'sineOut')
		doTweenAlpha('BgLogo2Brr', 'bglogo2', 1, 0.25, 'sineOut')
		doTweenAlpha('BgLogo3Brr', 'bglogo3', 1, 0.25, 'sineOut')

		doTweenX('BackMiddleX', 'Middle2', 380, 0.15, 'sineOut')
		doTweenY('BackMiddleY', 'Middle2', 100, 0.15, 'sineOut')

		doTweenAlpha('rightButton', 'RightArrow', 1, 0.15, 'sineOut')
		doTweenAlpha('leftButton', 'LeftArrow', 1, 0.15, 'sineOut')

		setGraphicSize('Middle2', images[id].sizeSelected * 100)
	end
end
function onChange(num)
id = id + num
	
if (id < 0) then
	id = length ;
end
if (id > length) then
	id = 0;
end
if id == 0 then
	makeLuaSprite('left2', 'gallery/'..images[length].name, 60, 100)
	makeLuaSprite('Middle2', 'gallery/'..images[id].name, 380, 100)
	makeLuaSprite('Right2', 'gallery/'..images[id + 1].name, 280*3, 100)

	setGraphicSize('left2', images[length].sizeNotSelected * 100)
	setGraphicSize('Right2', images[id + 1].sizeNotSelected * 100)
elseif id == length  then
	makeLuaSprite('left2', 'gallery/'..images[id-1].name, 60, 100)
	makeLuaSprite('Middle2', 'gallery/'..images[id].name, 380, 100)
	makeLuaSprite('Right2', 'gallery/'..images[0].name, 280*3, 100)

	setGraphicSize('left2', images[id-1].sizeNotSelected * 100)
	setGraphicSize('Right2', images[0].sizeNotSelected * 100)
else
	makeLuaSprite('left2', 'gallery/'..images[id-1].name, 60, 100)
	makeLuaSprite('Middle2', 'gallery/'..images[id].name, 380, 100)
	makeLuaSprite('Right2', 'gallery/'..images[id +1 ].name, 280*3, 100)

	setGraphicSize('left2', images[id-1].sizeNotSelected * 100)
	setGraphicSize('Right2', images[id + 1].sizeNotSelected * 100)
end
	setGraphicSize('Middle2', images[id].sizeSelected * 100)

	setProperty('left2.alpha', 0.5)
	setProperty('Middle2.alpha', 1)
	setProperty('Right2.alpha', 0.5)

	addLuaSprite('left2')
	addLuaSprite('Right2')
	addLuaSprite('Middle2')

	setObjectCamera('left2', 'Other')
	setObjectCamera('Middle2', 'Other')
	setObjectCamera('Right2', 'Other')

	setObjectOrder('left2',getObjectOrder('bglogo'))
	setObjectOrder('Right2',getObjectOrder('bglogo'))
	setObjectOrder('Middle2',getObjectOrder('bglogo'))
	

end
function fuckHud()
		setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
		
end

function onTimerCompleted(tag) --for buttons thing
	if tag == 'right' then
		doTweenColor('ColorRight', 'RightArrow', 'FFFFFF', 0.1)
	end
	if tag == 'left' then
		doTweenColor('ColorLeft', 'LeftArrow', 'FFFFFF', 0.1)
	end
	if tag == 'musica' then
			playMusic('gallery', 1, true)
	end
end