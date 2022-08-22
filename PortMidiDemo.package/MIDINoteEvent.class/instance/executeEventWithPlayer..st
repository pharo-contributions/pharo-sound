execution
executeEventWithPlayer: aMIDIScorePlayer
	"Plays the note."
	| track |
	track := (aMIDIScorePlayer score tracks at: self trackName).
	aMIDIScorePlayer nextPlayNoteOn: self onChannel: track channel.
	track addToCurrentlyPlayed: self.
	track nextEventIndex: track nextEventIndex + 1