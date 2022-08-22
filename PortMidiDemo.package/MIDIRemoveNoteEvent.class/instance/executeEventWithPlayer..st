execution
executeEventWithPlayer: aMIDIScorePlayer
	"Removes the note at noteIndex from the track named trackName."
	Transcript show: 'removing a note'; cr.
	(aMIDIScorePlayer score tracks at: trackName) events removeAt: noteIndex.