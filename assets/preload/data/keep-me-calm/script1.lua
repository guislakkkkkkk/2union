local allowEndSong = false

function onCreatePost()
	picoAlreadyUnlocked = runHaxeCode("return StoryMenuState.weekCompleted.get('2union') ? true : false;")
end

function onEndSong()
    if not allowEndSong and isStoryMode and not picoAlreadyUnlocked and not seenCutscene  then
        startVideo('pico')
        allowEndSong = true
        return Function_Stop;
    end
    return Function_Continue;
end