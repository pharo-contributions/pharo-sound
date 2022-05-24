accessing
turnOnNoteMIDI: midiKey
	
	| aScorePlayer |
	
	aScorePlayer := MIDIScorePlayer new.
	aScorePlayer openMidiOutWithDevice: 3.
	aScorePlayer nextPlayNoteOnValue: midiKey.
	soundPlaying := midiKey.
	aScorePlayer closeMidiOut
