tests
testNextPlayNote
	| aScorePlayer noteC|
	aScorePlayer := MIDIScorePlayer new.
	aScorePlayer openMidiOutWithDevice: instance getDefaultOutputDeviceID.
	
	noteC := MIDINoteEvent new noteValue: 60.
							
	self assert: (aScorePlayer nextPlayNote: noteC) equals: 0.
	
	aScorePlayer closeMidiOut