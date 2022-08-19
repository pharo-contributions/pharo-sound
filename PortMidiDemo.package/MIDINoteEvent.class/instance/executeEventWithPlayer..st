as yet unclassified
executeEventWithPlayer: aMIDIScorePlayer
	| track |
	Transcript show: 'playing a note'; cr.
	track := (aMIDIScorePlayer score tracks at: self trackName).
	aMIDIScorePlayer nextPlayNoteOn: self onChannel: track channel.
	"aMIDIScorePlayer wrapper ifNotNil: [ aMIDIScorePlayer wrapper manageEvent: self ofType: 'PlayNote']."
	track addToCurrentlyPlayed: self.
	track nextEventIndex: track nextEventIndex + 1