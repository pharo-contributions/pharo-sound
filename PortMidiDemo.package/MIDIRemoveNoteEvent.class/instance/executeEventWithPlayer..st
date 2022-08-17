as yet unclassified
executeEventWithPlayer: aMIDIScorePlayer
	| track |
	Transcript show: 'removing a note'; cr.
	(aMIDIScorePlayer setToModified tracks at: trackName) events removeAt: noteIndex.
	track := (aMIDIScorePlayer score tracks at: self trackName).
	track nextEventIndex: track nextEventIndex + 1