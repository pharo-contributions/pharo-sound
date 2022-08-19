as yet unclassified
executeEventWithPlayer: aMIDIScorePlayer
	Transcript show: 'adding a note'; cr.
	(aMIDIScorePlayer score tracks at: trackName) addEventToTrack: newNote.