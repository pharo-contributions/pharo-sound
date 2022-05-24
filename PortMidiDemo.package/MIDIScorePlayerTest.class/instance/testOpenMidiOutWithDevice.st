tests
testOpenMidiOutWithDevice
	| aScorePlayer |
	aScorePlayer := MIDIScorePlayer new.
	self assert: (aScorePlayer openMidiOutWithDevice: MIDIScorePlayer defaultOutput) equals: 0.
	aScorePlayer closeMidiOut.