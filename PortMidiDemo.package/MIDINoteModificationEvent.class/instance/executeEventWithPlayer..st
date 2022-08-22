execution
executeEventWithPlayer: aMIDIScorePlayer
	Transcript show: 'modifying a note'; cr.
	(aMIDIScorePlayer score tracks at: trackName) events at: noteIndex put: newNote.