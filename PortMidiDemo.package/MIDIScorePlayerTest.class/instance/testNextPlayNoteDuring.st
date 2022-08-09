tests
testNextPlayNoteDuring
	| aScorePlayer noteC|
	aScorePlayer := MIDIScorePlayer new.
	aScorePlayer openMidiOutWithDevice: instance getDefaultOutputDeviceID.
	
	noteC := MIDINote new noteValue: 60.
							
	self assert: (aScorePlayer nextPlayNote: noteC during: 500) equals: 0.
	
	aScorePlayer closeMidiOut