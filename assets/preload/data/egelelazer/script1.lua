e = 1
opponentmiss = 0
ranstoring = 0

--change the line below to the opponent miss animation name
local ame = {'singLEFTmiss', 'singDOWNmiss', 'singUPmiss', 'singRIGHTmiss'}
--miss volume
mvolume = 0
--miss chance
missc = 20

function onUpdatePost(elapsed)
    for i = 0, getProperty('notes.length')-1 do
        local strumTime = getPropertyFromGroup('notes', i, 'strumTime')
        local distance = strumTime - getSongPosition();
        data = getPropertyFromGroup('notes', i, 'noteData')
        if getPropertyFromGroup('notes', i, 'mustPress') == false then
            math.randomseed(strumTime)
            noteran = math.random(1,missc) 
            if ranstoring == 1 and distance >= 10 and distance <= 20 then
                setPropertyFromGroup('notes', i, 'ignoreNote', true) 
                playAnim('dad', ame[data+1], false)
                hpp = getProperty('health')
                setProperty('health',hpp + 0.023)
                opponentmiss = opponentmiss + 1
                playSound('missnote1',mvolume)
            end
        end
    end
end

function onStepHit()
    if curStep % 2 == 0 then
        ranstoring = noteran
    end
end