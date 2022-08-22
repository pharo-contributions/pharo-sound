tests
testOpenMidiOutWithDevice
	| aScorePlayer |
	"If this test fails, please restart your Pharo image."
	aScorePlayer := MIDIScorePlayer new.
	self assert: (aScorePlayer openMidiOutWithDevice: MIDIScorePlayer defaultOutput) equals: 0.
	aScorePlayer closeMidiOut.