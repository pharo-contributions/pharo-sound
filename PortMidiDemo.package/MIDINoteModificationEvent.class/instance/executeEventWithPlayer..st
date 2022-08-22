execution
executeEventWithPlayer: aMIDIScorePlayer
	"Replace the note at noteIndex by newNote to execute a modification."
	(aMIDIScorePlayer score tracks at: trackName) events at: noteIndex put: newNote.