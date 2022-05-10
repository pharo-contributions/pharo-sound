accessing
turnOffNoteSound

	midiPort notNil & soundPlaying notNil ifTrue: [
		soundPlaying isInteger ifTrue: [
			midiPort midiCmd: 16r90 channel: channel byte: soundPlaying byte: 0]].
	soundPlaying := nil.
