local u = 0
local u2 = 0

function onUpdate()
	if downscroll == true then
		u = 40
		u2 = 7
	elseif downscroll == false then
		u = 590
		u2 = 563
	end
end

function goodNoteHit()
	setProperty('iconP1.y',u)
	doTweenY('boin','iconP1',u2,0.3, 'cubeOut')
end

function opponentNoteHit()
	setProperty('iconP2.y',u)
	doTweenY('boin2','iconP2',u2,0.3, 'cubeOut')
end