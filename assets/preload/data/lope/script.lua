local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and not seenCutscene then --Block the first countdown
		startVideo('lope');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onStepHit()
	if curStep == 1 then
		endSong()
	end
end

function onCreate()
	removeLuaScript('scripts/introduction.lua')

end