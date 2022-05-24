accessing
turnOffNoteMIDI

	| aScorePlayer |
	
	soundPlaying notNil ifTrue: [
		soundPlaying isInteger ifTrue: [
			aScorePlayer := MIDIScorePlayer new.
			aScorePlayer openMidiOutWithDevice: 3.
			aScorePlayer nextPlayNoteOffValue: soundPlaying.]].
	soundPlaying := nil.
	aScorePlayer closeMidiOut
