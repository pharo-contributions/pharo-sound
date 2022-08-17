as yet unclassified
executeEventWithPlayer: aMIDIScorePlayer
	| track |
	Transcript show: 'modifying a note'; cr.
	(aMIDIScorePlayer setToModified tracks at: trackName) events at: noteIndex put: newNote.
	track := (aMIDIScorePlayer score tracks at: self trackName).
	track nextEventIndex: track nextEventIndex + 1