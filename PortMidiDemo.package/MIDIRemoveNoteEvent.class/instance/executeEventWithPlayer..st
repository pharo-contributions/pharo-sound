execution
executeEventWithPlayer: aMIDIScorePlayer
	"Removes the note at noteIndex from the track named trackName."
	(aMIDIScorePlayer score tracks at: trackName) events removeAt: noteIndex.