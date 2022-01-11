local defaultNotePos = {};
local spin = true
local arrowMoveX = 10 --Set this to the x movement you want the notes to move
local arrowMoveY = 0 --Set this to the y movement you want the notes to move

function onSongStart()
	for i = 0,7 do
		x = getPropertyFromGroup('strumLineNotes', i, 'x')

		y = getPropertyFromGroup('strumLineNotes', i, 'y')

		table.insert(defaultNotePos, {x,y})

		--debugPrint("{" .. x .. "," .. y .. "}" .. " i: " .. i)
	end
end

function onUpdate(elapsed)

	songPos = getPropertyFromClass('Conductor', 'songPosition');

	currentBeat = (songPos / 1000) * (bpm / 60)

	if spin == true then
		for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + arrowMoveX * math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + arrowMoveY * math.cos((currentBeat + i*0.25) * math.pi))
		end
	end

end

--Please note that this is only for making the notes move in x and y position, if you want to put rotating stuff, code it yourself.