function onCreate()
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', tostring(boyfriendName))
	
	if boyfriendName == 'pico-player' then 
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName','pico death'); -- song that will play during the death screen
  setPropertyFromClass('substates.GameOverSubstate', 'endSoundName','pico revive'); --sound to play when you press the confirm button to retry
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'pico die')
	else
  setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName',songName .. ' game over'); -- song that will play during the death screen
  setPropertyFromClass('substates.GameOverSubstate', 'endSoundName',songName .. ' retry'); --sound to play when you press the confirm button to retry
end
end