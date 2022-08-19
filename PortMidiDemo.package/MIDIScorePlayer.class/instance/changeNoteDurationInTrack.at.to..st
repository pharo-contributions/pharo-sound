modifications
changeNoteDurationInTrack: aTrackName at: aNoteIndex to: aNoteDuration
	| newNote eventTime track |
	track := (score tracks at: aTrackName).
	eventTime := Time millisecondClockValue - self firstStartTime.
	(aNoteIndex > track events size)ifTrue:[
			"Changes instantly the duration if the note doesn't exists yet."
			(self searchForNewNote: aNoteIndex inTrack: aTrackName) newNote duration: aNoteDuration.
		]ifFalse:[
			newNote := (track events at: aNoteIndex) veryDeepCopy.
			newNote duration: aNoteDuration.
			modifications add: (MIDINoteModificationEvent new time: eventTime; trackName: aTrackName; noteIndex: aNoteIndex; newNote: newNote )
		]