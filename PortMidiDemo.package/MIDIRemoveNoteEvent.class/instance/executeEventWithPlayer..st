as yet unclassified
executeEventWithPlayer: aMIDIScorePlayer
	Transcript show: 'removing a note'; cr.
	(aMIDIScorePlayer score tracks at: trackName) events removeAt: noteIndex.