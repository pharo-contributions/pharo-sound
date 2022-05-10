accessing
turnOnNoteSound: midiKey

	midiPort midiCmd: 16r90 channel: channel byte: midiKey byte: velocity.
	soundPlaying := midiKey.
