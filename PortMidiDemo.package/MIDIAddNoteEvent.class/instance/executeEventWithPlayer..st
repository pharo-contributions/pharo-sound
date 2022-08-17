as yet unclassified
executeEventWithPlayer: aMIDIScorePlayer
	| track |
	Transcript show: 'adding a note'; cr.
	(aMIDIScorePlayer setToModified tracks at: trackName) addEventToTrack: newNote.
	track := (aMIDIScorePlayer score tracks at: self trackName).
	track nextEventIndex: track nextEventIndex + 1