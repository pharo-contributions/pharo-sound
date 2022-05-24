tests
testCloseMidiOut
	"If this tests fail with error -9995, try to save and quit then launch again your image."
	| aScorePlayer |
	aScorePlayer := MIDIScorePlayer new.
	aScorePlayer openMidiOutWithDevice: PortMidiLibrary uniqueInstance getDefaultOutputDeviceID.
	self assert: aScorePlayer closeMidiOut equals: 0