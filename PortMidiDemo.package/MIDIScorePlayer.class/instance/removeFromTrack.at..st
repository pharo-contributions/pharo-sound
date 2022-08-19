modifications
removeFromTrack: aTrackName at: aNoteIndex
	|eventTime|
	eventTime := Time millisecondClockValue - self firstStartTime.
	(aNoteIndex > (score tracks at: aTrackName) events size)ifTrue:[
			"Changes instantly the duration if the note doesn't exists yet."
			modifications remove: (self searchForNewNote: aNoteIndex inTrack: aTrackName).
		]ifFalse:[
	modifications add: (MIDIRemoveNoteEvent new time: eventTime; trackName: aTrackName; noteIndex: aNoteIndex)]