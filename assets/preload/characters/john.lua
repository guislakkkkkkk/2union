local confuso = 1

function onCreate()
	confuso = getRandomInt(1,30)
	
	if confuso == 18 then
		setProperty('dad.angle',354)
		playSound('confuso',3)
	end
end