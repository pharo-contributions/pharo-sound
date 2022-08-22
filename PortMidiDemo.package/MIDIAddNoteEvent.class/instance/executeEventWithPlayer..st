execution
executeEventWithPlayer: aMIDIScorePlayer
	"Adds newNote to the track named trackName."
	(aMIDIScorePlayer score tracks at: trackName) addEventToTrack: newNote.