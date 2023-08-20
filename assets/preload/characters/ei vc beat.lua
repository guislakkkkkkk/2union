function onUpdate()
	if getProperty('dad.animation.curAnim.name') == 'singLEFT' and flashingLights then
		doTweenColor('color','dad','D363FF',0.3,'cubeOut')
	end
	if getProperty('dad.animation.curAnim.name') == 'singDOWN' and flashingLights  then
		doTweenColor('color','dad','63FAFF',0.3,'cubeOut')
	end	
	if getProperty('dad.animation.curAnim.name') == 'singUP' and flashingLights then
		doTweenColor('color','dad','63FF63',0.3,'cubeOut')
	end	
	if getProperty('dad.animation.curAnim.name') == 'singRIGHT' and flashingLights then
		doTweenColor('color','dad','FF5454',0.3,'cubeOut')
	end	
	if getProperty('dad.animation.curAnim.name') == 'idle' and flashingLights then
		doTweenColor('color','dad','FFFFFF',0.3,'cubeOut')
	end
end