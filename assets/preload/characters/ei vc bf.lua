function goodNoteHit()
	setProperty('boyfriend.scale.y',0.4)
	doTweenY('boim','boyfriend.scale',0.6,0.3,'bounceOut')

end

function onUpdate()
	if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
		doTweenAngle('angle','boyfriend',270,0.3,'cubeOut')
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
		doTweenAngle('angle','boyfriend',180,0.3,'cubeOut')
	end	
	if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
		doTweenAngle('angle','boyfriend',0,0.3,'cubeOut')
	end	
	if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
		doTweenAngle('angle','boyfriend',90,0.3,'cubeOut')
	end	
	if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		doTweenAngle('angle','boyfriend',0,0.3,'cubeOut')
	end
end