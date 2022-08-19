modifications
changeNoteValueInTrack: aTrackName at: aNoteIndex to: aNoteValue
	| newNote eventTime track |
	track := (score tracks at: aTrackName).
	eventTime := Time millisecondClockValue - self firstStartTime.
	(aNoteIndex > track events size)ifTrue:[
			"Changes instantly the duration if the note doesn't exists yet."
			(self searchForNewNote: aNoteIndex inTrack: aTrackName) newNote noteValue: aNoteValue.
		]ifFalse:[
	newNote := (track events at: aNoteIndex) veryDeepCopy.
	newNote noteValue: aNoteValue.
	modifications add: (MIDINoteModificationEvent new time: eventTime; trackName: aTrackName; noteIndex: aNoteIndex; newNote: newNote )]